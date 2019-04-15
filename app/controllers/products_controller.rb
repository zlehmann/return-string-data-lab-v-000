class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def create
    @product = Product.new

  end

end
