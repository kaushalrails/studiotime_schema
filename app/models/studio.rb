class Studio < ApplicationRecord
  belongs_to :user
  has_many :studio_types
  has_many :reviews, as: :reviewer
  has_many :images, as: :imageable
end
