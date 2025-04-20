class AccessoriesController < ApplicationController

  def show
    @accessory = Accessory.find_by(name: params[:accessory_name])
    render :show
  end

  

end
