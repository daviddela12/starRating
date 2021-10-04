require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:frozenReview1)
  end

  test "should get create" do
    assert_difference('Review.count') do
      post reviews_create_url, params: { review: { description: @review.description, rating: @review.rating, product_id: @review.product_id } }
    end
    # redirect without ajax call
    #product = Product.find(@review.product_id)
    #assert_redirected_to products_show_url(product)
  end

end
