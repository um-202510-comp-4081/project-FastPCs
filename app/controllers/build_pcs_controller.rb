# frozen_string_literal: true

class BuildPcsController < ApplicationController
  def index
    @build_pcs = BuildPc.all
  end

  def new
    @build_pc = BuildPc.new
    @cpu_options     = BuildPc.distinct.pluck(:cpu).compact
    @gpu_options     = BuildPc.distinct.pluck(:gpu).compact
    @ram_options     = BuildPc.distinct.pluck(:ram).compact
    @storage_options = BuildPc.distinct.pluck(:storage).compact
    @mobo_options    = BuildPc.distinct.pluck(:mobo).compact
  end

  def edit
    @build_pc = BuildPc.find(params[:id])
    load_dropdown_options
  end

  def create
    @build_pc = BuildPc.new(build_pc_params)

    # Calculate total price and set it before saving
    @build_pc.price = @build_pc.calculate_total_price

    if @build_pc.save
      redirect_to build_pcs_url, notice: 'PC Build was successfully created.'
    else
      render :new
    end
  end

  def update
    @build_pc = BuildPc.find(params[:id])
    if @build_pc.update(build_pc_params)
      redirect_to build_pcs_path, notice: 'PC build was successfully updated.'
    else
      load_dropdown_options
      render :edit
    end
  end

  def destroy
    @build_pc = BuildPc.find(params[:id])
    @build_pc.destroy
    redirect_to build_pcs_url, notice: 'PC build was successfully deleted.'
  end

  private

  def build_pc_params
    params.require(:build_pc).permit(:name, :cpu, :gpu, :ram, :storage, :mobo, :price)
  end

  def load_dropdown_options
    @cpu_options = BuildPc::CPU_PRICES.keys
    @gpu_options = BuildPc::GPU_PRICES.keys
    @ram_options = BuildPc::RAM_PRICES.keys
    @storage_options = BuildPc::STORAGE_PRICES.keys
    @mobo_options = BuildPc::MOBO_PRICES.keys
  end
end
