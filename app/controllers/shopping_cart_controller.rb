class ShoppingCartController < ApplicationController

    def new
        disc = ShoppingCart.create(:user_id => params[:user_id], :disc_id => params[:disc_id])
        render json: Disc.find(params[:disc_id]), status: :created
    end

    def delete_all
        ShoppingCart.where(user_id: params[:user_id]).destroy_all
        head :no_content
    end

    def delete_cart_item
        ShoppingCart.where(user_id: params[:user_id], disc_id: params[:disc_id]).destroy_all
        head :no_content
    end

end
