# frozen_string_literal: true

class BuildPcsController < ApplicationController
  def new
    @build_pc = BuildPc.new
    render :new
  end

  def create
    build_pc_product = Product.create!(
      name: params[:build_pc][:name],
      price: params[:build_pc][:price],
      description: "#{params[:build_pc][:cpu]}, #{params[:build_pc][:gpu]}, #{params[:build_pc][:ram]} RAM, #{params[:build_pc][:storage]} storage, #{params[:build_pc][:mobo]} motherboard",
      product_type: 'BuildPC',
      image: 'build_pc/image.jpg')

    @build_pc = BuildPc.new(params.require(:build_pc).permit(:name, :cpu, :gpu, :ram, :storage, :mobo, :price))
    @build_pc.product = build_pc_product
    @build_pc.price = @build_pc.calculate_total_price

    if @build_pc.save
      current_user.cart.cart_items.create!(product: build_pc_product)
      redirect_to cart_path
    else
      flash.now[:error] = "Failed to build custom pc"
      render :new
    end
    
  end

  def edit
    @build_pc = BuildPc.find(params[:id])
    render :edit
  end

  def update
    @build_pc = BuildPc.find(params[:id])

      if @build_pc.update(build_pc_params)
        new_price = @build_pc.calculate_total_price
        @build_pc.update_column(:price, new_price)

        @build_pc.product.update(
          name: @build_pc.name,
          price: new_price,
          description: "#{@build_pc.cpu}, #{@build_pc.gpu}, #{@build_pc.ram} RAM, #{@build_pc.storage} storage, #{@build_pc.mobo} motherboard"
        )

        redirect_to cart_path, notice: "#{@build_pc.name} has been updated"
      
      else
        render :edit

      end

  end

  private

  def build_pc_params
    params
      .require(:build_pc)
      .permit(:name, :cpu, :gpu, :ram, :storage, :mobo, :price)
  end

end
