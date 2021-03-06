require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test 'products attributes must not be empty' do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
  end

  test 'products price must be positive' do
    product = products(:frozen)
    assert product.valid?
  end

  test 'products price must not be negative or zero' do
    product = products(:frozen)
    product.price = -1
    assert product.invalid?
    product.price = 0
    assert product.invalid?
  end

end

