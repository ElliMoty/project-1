class ProductsController < ApplicationController
    def index
        @products = Product.new
    end
    
    def show
        @product = Product.find params[:id]
    end

    def add_to_cart
        puts "Hello world"
    end

end