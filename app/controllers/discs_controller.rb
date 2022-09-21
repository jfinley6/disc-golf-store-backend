class DiscsController < ApplicationController

    def home_page_discs
        discs = Disc.all.sample(8)
        render json: discs
    end

end
