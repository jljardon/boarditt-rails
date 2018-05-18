class User < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true
  validates :username, uniqueness: true

  has_many :posts
  has_many :votes , through: :posts
  has_many :comments
  has_secure_password
end
