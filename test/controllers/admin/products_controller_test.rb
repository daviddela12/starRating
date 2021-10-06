require 'test_helper'

module Admin
  class ProductsControllerTest < ActionDispatch::IntegrationTest
    setup do
      @product = products(:frozen)
    end

    test "should get index" do
      get admin_products_url
      assert_response :success
    end

    test "should get new" do
      get new_admin_product_url
      assert_response :success
    end

    test "should create products" do
      assert_difference('Product.count') do
        post admin_products_url, params: { product: { description: @product.description, price: @product.price, title: @product.title } }
      end

      assert_redirected_to admin_product_url(Product.last)
    end

    test "should show products" do
      get admin_product_url(@product)
      assert_response :success
    end

    test "should get edit" do
      get edit_admin_product_url(@product)
      assert_response :success
    end

    test "should update products" do
      patch admin_product_url(@product), params: { product: { description: @product.description, price: @product.price, title: @product.title } }
      assert_redirected_to admin_product_url(@product)
    end

    test "should destroy products" do
      assert_difference('Product.count', -1) do
        delete admin_product_url(@product)
      end

      assert_redirected_to admin_products_url
    end
    
  end
end
