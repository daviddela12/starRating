class Product < ApplicationRecord
  has_many :reviews, -> { order('created_at DESC') }, dependent: :destroy

  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, :description, :price, presence: true

  def average_reviews
    average = 0
    unless reviews.empty?
      reviews.each do |review|
        average += review.rating
      end
      average /= reviews.count
    end
    average.round(1)
  end
end
