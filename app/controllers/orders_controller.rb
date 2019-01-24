class OrdersController < ApplicationController
  # /orders
  def index
    @orders = Order.all
    @orders = @orders.to_a
    @orders.pop
  end

  # orders/:id
  def show
    @order = Order.find params[:id]
    @products = @order.products
  end

  def delete_product 
    order = Order.find params[:order_id]
    products = order.products.to_a
    indexToDel = params[:product_index].to_i
    products.delete_at(indexToDel)
    order.products = products

    if products.empty?
      redirect_to flopa_path
    else
      redirect_to @current_user.orders.last
    end

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
    products = @current_user.orders.last.products
    products_by_id = products.to_a.group_by { |p| p.id }

    products_by_id.each do |id, list_of_products_with_same_id|
      product = list_of_products_with_same_id[0]
      product.quantity = product.quantity - list_of_products_with_same_id.size
      product.save
    end

    orders = @current_user.orders
    current_order = orders.last
    current_order.order_date = Time.now
    current_order.save
    order = Order.new
    orders.push(order)
  end


end
