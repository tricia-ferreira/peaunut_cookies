class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :cooky
      t.string :name
      t.string :nickname
      t.integer :rating

      t.timestamps
    end
  end
end
