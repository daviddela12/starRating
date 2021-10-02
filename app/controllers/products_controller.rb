class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show ]

  def index
    @products = Product.all.order('title')
  end

  def show
    if flash[:review].nil?
      @review = Review.new
    else
      @review = Review.new(flash[:review])
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
