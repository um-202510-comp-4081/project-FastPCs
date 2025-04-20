class AddProductToReadypcs < ActiveRecord::Migration[7.1]
  def change
    add_reference :readypcs, :product, null: false, foreign_key: true
  end
end
