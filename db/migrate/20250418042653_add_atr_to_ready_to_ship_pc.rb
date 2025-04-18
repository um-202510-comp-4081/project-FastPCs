class AddAtrToReadyToShipPc < ActiveRecord::Migration[7.1]
  def change
    add_column :ready_to_ship_pcs, :name, :string
    add_column :ready_to_ship_pcs, :brand, :string
    add_column :ready_to_ship_pcs, :price, :decimal
    add_column :ready_to_ship_pcs, :description, :text
  end
end
