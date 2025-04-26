class AddImageToCartItem < ActiveRecord::Migration[7.1]
  def change
    add_column :cart_items, :image, :string
  end
end
