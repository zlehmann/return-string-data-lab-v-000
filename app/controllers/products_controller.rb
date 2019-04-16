class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    debugger
    @product = Product.last
    @product.name = params[:name]
    @product.price = params[:price]
    @product.description = params[:description]
    @product.inventory = params[:inventory]
    @product.save
    redirect_to products_path
  end

end
