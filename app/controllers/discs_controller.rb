class DiscsController < ApplicationController


    def home_page_discs
        discs = Disc.all.sample(8)
        render json: discs  
    end

    def manufacturers
        render json: Disc.select('distinct(brand)').order(:brand)
    end

    def all_discs
        discs = Disc.where(:category_slug => params[:category_slug]).page(params[:page])
        render json: discs
    end

end
