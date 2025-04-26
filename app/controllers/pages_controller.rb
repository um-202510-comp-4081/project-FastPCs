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
        render :accessories
    end
    
end
