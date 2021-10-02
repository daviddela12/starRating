class ReviewsController < ApplicationController
  def create
    product = Product.find(review_params[:product_id])
    @review = Review.new(review_params)
    respond_to do |format|
      if @review.save
        format.html { redirect_to products_show_url(product), notice: "Review was successfully created." }
        format.json { render products_show_url(product), status: :created, location: @review }
      else
        format.html { redirect_to products_show_url(id: product), flash: {review: @review, review_errors: @review.errors.full_messages}, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:product_id, :rating, :description)
  end
end
