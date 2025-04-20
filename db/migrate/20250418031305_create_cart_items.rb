class CreateCartItems < ActiveRecord::Migration[7.1]
  def change
    create_table :cart_items do |t|
      t.references :cart, null: false, foreign_key: true
      t.string :name
      t.decimal :price
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
