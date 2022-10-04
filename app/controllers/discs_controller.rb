class DiscsController < ApplicationController


    def home_page_discs
        render json: Disc.daily_discs
    end

    def manufacturers
        render json: Disc.select('distinct(brand)').order(:brand)
    end

    def sorted_discs
        if params[:category_slug] == "all"
            discs = Disc.order(params[:sort]).page(params[:page])
            total_discs = Disc.all
            render json: {discs: discs, total: total_discs.length}
        else
            discs = Disc.where(:category_slug => params[:category_slug]).order(params[:sort]).page(params[:page])
            total_discs = Disc.where(:category_slug => params[:category_slug])
            render json: {discs: discs, total: total_discs.length}
        end
    end

end
