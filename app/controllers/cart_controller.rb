class CartController < ApplicationController
  before_action :authenticate_user!
  
  def show
    if current_user.cart
      @cart = current_user.cart
    else
      @cart = current_user.create_cart

    render :show
    end
  end

  def destroy
    @cart = current_user.cart
    @cart.destroy

    flash[:success] = "Cart has been cleared"
    redirect_to cart_path
  end
end
