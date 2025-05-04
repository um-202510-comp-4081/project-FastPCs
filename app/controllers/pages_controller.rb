class PagesController < ApplicationController
    
    def home
        render :home
    end

    def readytoship
        @readypcs = Readypc.all
        render :readytoship
    end

    def rtsshow
        @readypc = Readypc.find(params[:id])
        render :rtsshow
    end

    def accessories
        if params[:category].present?
            @accessories = Accessory.where("name LIKE ?", "%#{params[:category]}%")
          else
            @accessories = Accessory.order("RANDOM()").limit(6)
          end
        
          respond_to do |format|
            format.html              
            format.turbo_stream      
          end
    end
    
end
