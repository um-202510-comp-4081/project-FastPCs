class CreateAccessories < ActiveRecord::Migration[7.1]
  def change
    create_table :accessories do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
