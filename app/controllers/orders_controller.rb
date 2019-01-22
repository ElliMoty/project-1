class OrdersController < ApplicationController
  def index
    @orders = Order.all 
  end

  def create
    order = Order.create order_params
    redirect_to orders_path
  end

  def confirmation
  end

  def add_to_cart
    # product = Product.find params[:id]
    # @current_user.orders.last.products << product
    # redirect_to @current_user.orders.last
  end

  def order_params
    params.require(:order).permit(:date)
  end


end
