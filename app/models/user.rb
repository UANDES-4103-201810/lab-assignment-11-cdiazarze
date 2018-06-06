class User < ApplicationRecord
  has_many :messages
  validates :username, uniqueness: true
  validates :username, presence: true
  validates :username, length: {maximum: 20}
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
end
