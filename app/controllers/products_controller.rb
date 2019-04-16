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
    @product.name = params[:product][:name]
    @product.price = params[:product][:price]
    @product.description = params[:product][:description]
    @product.inventory = params[:product][:inventory]
    @product.save
    redirect_to products_path
  end

end
