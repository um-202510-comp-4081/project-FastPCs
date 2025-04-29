class AccessoriesController < ApplicationController

  def show
    @accessory = Accessory.find_by(name: params[:accessory_name])
    render :show
  end

  def keyboards
    @accessories = Accessory.where("name LIKE ?","%Keyboard%")
    render :index
  end
  
  def mouses
    @accessories = Accessory.where("name LIKE ?","%Mouse%")
    render :index
  end

  def monitors
    @accessories = Accessory.where("name LIKE ?","%Monitor%")
    render :index
  end
  
  def headsets
    @accessories = Accessory.where("name LIKE ?","%Headset%")
    render :index
  end

  def chairs
    @accessories = Accessory.where("name LIKE ?","%Chair%")
    render :index
  end

  def webcams
    @accessories = Accessory.where("name LIKE ?","%Webcam%")
    render :index
  end

end
