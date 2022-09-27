class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :product_id
      t.string :user_id
      t.string :description
      t.string :rating

      t.timestamps
    end
  end
end
