class CartsController < ApplicationController
    def index
        @orders = Order.all
    end 

    def show
        @order = current_order
        @order.save
        session[:order_id] = @order.id
    end
end
