class SessionsController < ApplicationController
    before_action :set_current_user, :set_current_shopping_cart


     def shopping_cart
        if @current_user
            array = []
            price = 0
            @shopping_cart.each do |t|
                if t.disc_id.present?
                    array << Disc.find(t.disc_id)   
                    price += Disc.find(t.disc_id).price
                end
            end
            render json: {discs: array, total_price: price, total_items: @shopping_cart.length}
        else
            render json: {shopping_cart: false}
        end
# , only: [:id, :name, :brand, :picture_url, :price]
    end

    def set_current_user
        if session[:user_id]
            @current_user = User.find(session[:user_id])
        end
    end

    def set_current_shopping_cart
        if @current_user
            @shopping_cart = @current_user.shopping_cart
        else
            if session[:shopping_cart]
                @shopping_cart = ShoppingCart.find(session[:shopping_cart])
            else
                @shopping_cart = ShoppingCart.create
                session[:shopping_cart] = @shopping_cart.id
            end
        end
    end

    def create
        user = User.find_by(email: params["user"]["email"])
                   &.authenticate(params["user"]["password"])

        if user
            session[:user_id] = user.id
            render json: {
                status: :created,
                logged_in: true,
                user: user
            }
        else
            render json: { status: 401 }
        end
    end

    def logged_in
        if @current_user
            render json: {
                logged_in: true,
                user: @current_user
            }
        else
            render json: {
                logged_in: false
            }
        end
    end

    def logout
        reset_session
        render json: { status: 200, logged_out: true }
    end

    

end