require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  test 'review attributes must not be empty' do
    review = Review.new
    assert review.invalid?
    assert review.errors[:product].any?
    assert review.errors[:rating].any?
    assert review.errors[:description].any?
  end

  test 'review must be greater than 0' do
    review = reviews(:frozenReview1)
    assert review.valid?
    review.rating = 0
    assert review.invalid?
    review.rating = -1
    assert review.invalid?
  end

  test 'review must be less or equal to 5' do
    review = reviews(:frozenReview1)
    assert review.valid?
    review.rating = 5
    assert review.valid?
    review.rating = 6
    assert review.invalid?
  end

end
