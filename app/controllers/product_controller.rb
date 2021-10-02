class ProductController < ApplicationController
  before_action :set_product, only: %i[ show ]

  def index
    @products = Product.all.order('title')
  end

  def show
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
