class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.decimal :rating, precision: 2, scale: 1
      t.string :description
      t.belongs_to :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
