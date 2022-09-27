class Review < ApplicationRecord

  belongs_to :product
  belongs_to :user

  validates :user, presence: true
  validates :product, presence: true
  validates :description, presence: true
  validates :rating, presence: true, numericality: {in: 1..5}
end
