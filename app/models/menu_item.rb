class MenuItem < ApplicationRecord
  belongs_to :restaurant

  validates :name, :price, :prep_time, :menu_category, :restaurant, presence: true
  validates :name, uniqueness: { scope: :restaurant, message: "You can't list the same item multiple times."}
end
