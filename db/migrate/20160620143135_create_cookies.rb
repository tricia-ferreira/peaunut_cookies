class CreateCookies < ActiveRecord::Migration[5.0]
  def change
    create_table :cookies do |t|
      t.string :name
      t.text :description
      t.boolean :on_sale
      t.decimal :price

      t.timestamps
    end
  end
end
