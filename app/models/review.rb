class Review < ApplicationRecord
  after_create_commit { broadcast_prepend_to('reviews') }

  belongs_to :product

  validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
  validates :description, :rating, presence: { message: :required }
end
