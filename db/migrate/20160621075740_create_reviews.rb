class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :nickname
      t.text :comment
      t.integer :rating

      t.timestamps
    end
  end
end
