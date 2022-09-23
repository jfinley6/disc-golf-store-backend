class DiscsController < ApplicationController


    def home_page_discs
        discs = Disc.all.sample(8)
        render json: discs  
    end

    def manufacturers
        render json: Disc.select('distinct(brand)').order(:brand)
    end

    def all_discs_category
        discs = Disc.where(:category_slug => params[:category_slug]).page(params[:page])
        total_discs = Disc.where(:category_slug => params[:category_slug])
        render json: {discs: discs, total: total_discs.length}
    end

    def index
        discs = Disc.all.page(params[:page])
        total_discs = Disc.all
        render json: {discs: discs, total: total_discs.length}
    end

    def discs_of_the_day
        discs = Disc.all.sample(8)
        total_discs = Disc.all

        # This will make sure the joke is almost unique of this particular
        # date. You can do more complexe calculation to make sure it's
        # unique but you get the basic idea
        sum_of_date = Date.today.year + Date.today.month + Date.today.day

        # loop to make sure the sum_of_date is not greater than the count of jokes
        new_count = loop do
            if sum_of_date >= discs
                sum_of_date = sum_of_date / 2
            else
                break (count - sum_of_date)
            end
        end

        Joke.first(new_count).last
end

end
