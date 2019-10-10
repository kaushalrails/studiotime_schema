class Booking < ApplicationRecord
  has_many :reviews, as: :reviewer
  has_many :slots
  belongs_to :user
  belongs_to :studio
end
