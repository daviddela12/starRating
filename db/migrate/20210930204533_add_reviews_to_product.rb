class AddReviewsToProduct < ActiveRecord::Migration[6.0]
  def change
    if foreign_key_exists?(:reviews, :products)
      remove_foreign_key :reviews, :products
    end
    add_foreign_key :reviews, :products, on_delete: :cascade
  end
end
