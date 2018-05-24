class User < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true
  # validates :username, uniqueness: true
  validates :email, uniqueness: true
  validates :password, confirmation: { case_sensitive: true }

  has_many :posts
  has_many :votes , through: :posts
  has_many :comments
  has_secure_password
end
