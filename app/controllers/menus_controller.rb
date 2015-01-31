class MenusController < ApplicationController

  before_action :set_post, only: [:show]



  def index
    @menus = Menu.all
  end

  def show
  end



  private


  def set_post
    @menu = Menu.find(params[:id])
  end

end
