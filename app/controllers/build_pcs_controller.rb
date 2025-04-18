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

  def destroy
    @build_pc = BuildPc.find(params[:id])
    @build_pc.destroy
    redirect_to build_pcs_url, notice: 'PC build was successfully deleted.'
  end

  private

  def build_pc_params
    params.require(:build_pc).permit(:name, :cpu, :gpu, :ram, :storage, :mobo)
  end
end
