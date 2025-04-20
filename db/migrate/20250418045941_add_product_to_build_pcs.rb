class AddProductToBuildPcs < ActiveRecord::Migration[7.1]
  def change
    add_reference :build_pcs, :product, null: false, foreign_key: true
  end
end
