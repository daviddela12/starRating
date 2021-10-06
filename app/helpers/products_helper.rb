module ProductsHelper
  def average_reviews(product)
    average = 0
    product.reviews.each do |review|
      average += review.rating
    end
    unless product.reviews.empty?
      average /= product.reviews.count
    end
    average.round(1)
  end
end
