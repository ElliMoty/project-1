class CartsController < ApplicationController

    def show
        @products = Product.all
    end

end
