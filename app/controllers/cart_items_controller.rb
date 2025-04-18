class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def create
    product = Product.find(params[:product_id])
    cart = current_user.cart || current_user.create_cart

    cart.cart_items.create!(product: product)

    redirect_to cart_path, notice: "#{product.name} added to cart!"
  end
  

end
