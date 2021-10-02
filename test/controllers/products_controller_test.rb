require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:frozen)
  end

  test "should get index" do
    get products_index_url
    assert_response :success
  end

  test "should get show" do
    get products_show_url(id: @product)
    assert_response :success
  end

end
