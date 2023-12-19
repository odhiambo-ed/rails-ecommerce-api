class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.references :company, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.float :price
      t.text :description
      t.string :img

      t.timestamps
    end
  end
end
