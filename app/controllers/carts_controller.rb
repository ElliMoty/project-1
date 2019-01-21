class CartsController < ApplicationController
    def show
        @order = current_order
        @order.save
        session[:order_id] = @order.id
    end
end
