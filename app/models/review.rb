class Review < ApplicationRecord
  belongs_to :reviewer, polymorphic: true
  belongs_to :user
end
