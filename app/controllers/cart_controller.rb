class CartController < ApplicationController

  def show
    if current_user.cart
      @cart = current_user.cart
    else
      @cart = current_user.create_cart

    render :show
    end
  end
end
