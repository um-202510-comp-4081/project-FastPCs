# frozen_string_literal: true

class CartController < ApplicationController
  def show
    @cart = current_user.cart || current_user.create_cart
    render :show
  end

  def destroy
    @cart = current_user.cart
    if @cart
      @cart.destroy
      respond_to do |format|
        format.html do
          flash[:success] = 'Cart has been cleared'
          redirect_to cart_path
        end
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to cart_path, alert: 'Cart not found' }
        format.json { render json: { error: 'Cart not found' }, status: :not_found }
      end
    end
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
