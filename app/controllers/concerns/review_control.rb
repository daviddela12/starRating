module ReviewControl

  private

    def review_init
      if flash[:review].nil?
        review = Review.new
      else
        review = Review.new(flash[:review])
      end
      review
    end
end
