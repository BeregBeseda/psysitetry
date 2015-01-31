# encoding: utf-8
class ProductsController < ApplicationController

  before_action :set_post, only: [:show]



  def index
    @products = Product.all
  end

  def show
    @user = User.new
    @order = Order.new
    session[:title_of_product] = @product.name
  end



  private

  def set_post
    @product = Product.find(params[:id])
  end

end
