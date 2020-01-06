class Mall < ApplicationRecord
  has_many :restaurants, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true
end
