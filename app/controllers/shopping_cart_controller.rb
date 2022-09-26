class ShoppingCartController < ApplicationController

    def new
        disc = ShoppingCart.create(:user_id => params[:user_id], :disc_id => params[:disc_id])
        render json: Disc.find(params[:disc_id]), status: :created
    end

end
