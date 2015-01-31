class OrderMailer < ActionMailer::Base

  default from: 'admin@happy-vita.com'
  
  def email_with_pay_link(order)
    @order = order
    mail(to: "#{@order.email}", subject: "#{@order.title_of_product}")
  end
  
end
