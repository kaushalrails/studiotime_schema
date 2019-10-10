class Review < ApplicationRecord
  belongs_to :reviewer, polymorphic: true
end
