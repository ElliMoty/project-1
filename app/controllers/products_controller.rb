class ProductsController < ApplicationController
    def index
        @products = Product.text_search(params[:query])
    end

    def show
        @product = Product.find params[:id]
    end

end