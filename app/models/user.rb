class User < ApplicationRecord
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, presence: true
  validates :password, confirmation: { case_sensitive: true }


  has_many :votes
  has_many :posts, through: :votes
  has_many :comments
  has_secure_password
end
