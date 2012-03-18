class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter do
    @session_cart = Cart.find_by_id(session[:cart_id]) unless session[:cart_id].nil?
    @current_cart = current_cart
  end
  
  def current_cart
    if customer_signed_in?
      Cart.find_by_customer_id!(current_customer.id)
    else
      Cart.find(session[:cart_id])
    end
  rescue ActiveRecord::RecordNotFound    
    if customer_signed_in?
      cart = Cart.create(:customer_id => current_customer.id)
    else
      cart = Cart.create
    end
      
    session[:cart_id] = cart.id
    
    cart
  end
end
