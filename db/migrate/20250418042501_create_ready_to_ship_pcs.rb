class CreateReadyToShipPcs < ActiveRecord::Migration[7.1]
  def change
    create_table :ready_to_ship_pcs do |t|

      t.timestamps
    end
  end
end
