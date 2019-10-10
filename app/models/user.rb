class User < ApplicationRecord
  has_many :studios
  has_many :payments
  has_many :verifications
  has_many :reviews, as: :reviewer
  has_one :image, as: :reviewer
end
