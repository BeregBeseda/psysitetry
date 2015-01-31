class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    @order = @user.orders.build(order_params)
    @order.title_of_product = session[:title_of_product]
    @order.name = @user.name
    @order.email = @user.email    
    if @user.save and OrderMailer.email_with_pay_link(@order).deliver            
        redirect_to menus_path  
    else
      redirect_to products_path
    end    
  end
  
  
  
  private
   
  def user_params
    params.require(:user).permit(:name, :email, :password, :key_word, :wants_news, :active, :akey) 
  end   
  
  def order_params
    params.require(:order).permit(:title_of_product, :link_of_product_on_psy_site, :price, :payed, :active, :akey) 
  end
  
end
