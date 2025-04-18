class RenameTypeColumnInYourModel < ActiveRecord::Migration[7.1]
  def change
    rename_column :cart_items, :type, :product_type
  end
end
