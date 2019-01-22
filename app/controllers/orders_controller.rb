class OrdersController < ApplicationController
  # /orders
  def index
    @orders = Order.all 
  end

  def add_to_cart
    product = Product.find params[:id]
    orders = @current_user.orders
    if orders.empty?
      order = Order.new
      order.save
      orders << order
    end
    @current_user.orders.last.products << product
    redirect_to @current_user.orders.last
  end

  def confirmation
  end

  # orders/:id
  def show
    @order = Order.find params[:id]
    @products = @order.products
  end

end
