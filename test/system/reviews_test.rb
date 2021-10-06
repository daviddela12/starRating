require 'application_system_test_case'

class ReviewsTest < ApplicationSystemTestCase
  setup do
    @review = reviews(:frozenReview1)
  end

  test 'creating a Review' do
    visit products_show_path(id: @review.product)

    find('#starRatingForm').click
    fill_in "Description", with: @review.description
    click_on "Create Review"

    assert_text "Review was successfully created"
  end

end
