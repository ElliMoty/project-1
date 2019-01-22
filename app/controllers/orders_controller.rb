class OrdersController < ApplicationController
  # /orders
  def index
    @orders = Order.all 
  end
 
  # orders/add_to_cart
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

  # /confirmation
  def confirmation
    orders = @current_user.orders
    order = Order.new
    orders.push(order) 
  end

  # orders/:id
  def show
    @order = Order.find params[:id]
    @products = @order.products
  end

end
