class PagesController < ApplicationController

    def home
        render :home
    end

    def rtsshow
        @readypc = Readypc.find(params[:id])
        render :rtsshow
    end

end
