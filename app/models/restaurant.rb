class Restaurant < ApplicationRecord
  belongs_to :user
  belongs_to :mall
  has_many :menu_items, dependent: :destroy

  validates :name, :cuisine, :opening_time, :closing_time, :user, :mall, presence: true
  validates :name, uniqueness: { scope: :mall, message: "This restaurant already exists in this mall!" }
  # validates :opening_time, :closing_time, numericality: true
  # validates :opening_time, :closing_time, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 24 }
  # validates :closing_time, numericality: { greater_than: :opening_time }

end
