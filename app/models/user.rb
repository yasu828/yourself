class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :answers
  has_many :room_users
  has_many :rooms, through: :room_users
end
