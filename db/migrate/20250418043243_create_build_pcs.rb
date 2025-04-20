class CreateBuildPcs < ActiveRecord::Migration[7.1]
  def change
    create_table :build_pcs do |t|
      t.string :name
      t.string :cpu
      t.string :gpu
      t.string :ram
      t.string :storage
      t.string :mobo
      t.decimal :price

      t.timestamps
    end
  end
end
