class CreateReadypcs < ActiveRecord::Migration[7.1]
  def change
    create_table :readypcs do |t|
      t.string :brand
      t.string :name
      t.decimal :size
      t.string :processor
      t.integer :ram
      t.string :storage
      t.string :color
      t.decimal :price

      t.timestamps
    end
  end
end
