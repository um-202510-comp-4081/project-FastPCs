class PagesController < ApplicationController

    def home
        render :home
    end

    def accessories
        @accessories = Accessory.all
        render :accessories
    end
end
