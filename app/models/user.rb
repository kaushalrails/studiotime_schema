class User < ApplicationRecord
  has_many :studios
  has_many :payments
  has_many :verifications
  has_many :reviews
  has_one :image, as: :imageable
end
