class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :restaurants, dependent: :destroy

  validates :first_name, :last_name, :phone, :email, :date_of_birth, presence: true
  validates :email, :phone, uniqueness: true
end
