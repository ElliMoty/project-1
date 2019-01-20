class ProductsController < ApplicationController
    def show
        @product = Product.find params[:id]
    end

    def confirmation
        # @product = Product.find params[:id]
    end


end