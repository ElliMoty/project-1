class PagesController < ApplicationController
  def home
    @home_page = true
  end 

  def flopa
    @products = Product.order('name')
  end
end