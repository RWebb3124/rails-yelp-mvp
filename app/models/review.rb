class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, numericality: { only_integer: true }
  validates :content, presence: true
  validates :rating, inclusion: {
    in: (0..5),
    message: 'Rating must be between 0 and 5'
  }
end
