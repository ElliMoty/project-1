class PagesController < ApplicationController
  def home
  end 

  def flopa
    @products = Product.order('name')
  end
end