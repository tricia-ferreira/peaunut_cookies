class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :message
      t.belongs_to :review
      t.timestamps
    end
  end
end
