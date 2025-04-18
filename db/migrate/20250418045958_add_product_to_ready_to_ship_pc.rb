class AddProductToReadyToShipPc < ActiveRecord::Migration[7.1]
  def change
    add_reference :ready_to_ship_pcs, :product, null: false, foreign_key: true
  end
end
