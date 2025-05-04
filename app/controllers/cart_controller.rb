
class CartController < ApplicationController
  before_action :authenticate_user!

  def show
    @cart = current_user.cart || current_user.create_cart
    render :show
  end

  def destroy
    @cart = current_user.cart
  
    if @cart
      @cart.destroy
      flash[:success] = 'Cart has been cleared'
    else
      flash[:error] = 'Cart not found'
    end
  
    redirect_to cart_path
  end
  
  

  def checkout
    card_number = params[:card_number]
    exp = params[:exp_date]
    cvv = params[:cvv]

    if card_number.length == 16 && cvv.length == 3 && exp.present?
      current_user.cart.destroy if current_user.cart
      flash[:success] = 'Checked out successfully!'
      redirect_to cart_path
    else
      flash[:error] = 'Invalid payment details. Try again.'
      redirect_to cart_path
    end
  end
end
