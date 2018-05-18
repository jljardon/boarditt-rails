class Vote < ApplicationRecord
  validates :like, presence: true

  belongs_to :user
  belongs_to :post
end
