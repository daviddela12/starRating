class ReviewsController < ApplicationController
  def create
    product = Product.find(review_params[:product_id])
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.turbo_stream { 
          render turbo_stream: turbo_stream.replace(
            Review.new, partial: "reviews/form",
                      locals: { review: Review.new, notice: "Review was successfully created.", product: product }) }
        format.html { redirect_to request.referer, notice: "Review was successfully created." }
        format.json { render products_show_url(product), status: :created, location: @review }
      else
        format.turbo_stream { 
          render turbo_stream: turbo_stream.replace(
            @review, partial: "reviews/form",
                     locals: { review: @review, product: product }) }
        format.html { redirect_to request.referer, flash: {review: @review, review_errors: @review.errors.full_messages} }
        format.json { render json: @review.errors }
      end
    end
  end

  private

    def review_params
      params.require(:review).permit(:product_id, :rating, :description)
    end
end
