class PagesController < ApplicationController
  def home
  end 

  def flopa
    @products = Product.all
  end
end