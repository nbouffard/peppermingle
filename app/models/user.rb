class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :recipes
  has_many :events

  validates :nickname, :first_name, :last_name, :address, :date_of_birth, :email, :password, presence: true
end
