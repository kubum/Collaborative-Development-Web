class OrdersController < ApplicationController
  before_filter :authenticate_customer!
  
  # GET /orders
  def index
    @orders = current_customer.orders.order("id DESC")    
  end
  
  # POST /orders
  def create
    begin 
      ActiveRecord::Base.transaction do
        # Save address
        address = session[:delivery]
        address.save!
        
        session[:delivery] = nil
      
        order = Order.create!(
          :customer_id => current_customer.id, 
          :address_id => address.id, 
          :status => "In process"
        )
        
        order.transfer_items_from_cart(@current_cart)
      end  
      
      respond_to do |format|
        format.html { redirect_to carts_checkout_path }
      end
    rescue ActiveRecord::RecordNotSaved, ActiveRecord::RecordInvalid
      respond_to do |format|
        format.html { redirect_to carts_path, :alert => "Order cannot be saved" }
      end
    end
  end
end