class CartsController < ApplicationController
  before_filter :authenticate_customer!, :only => [:delivery]
  
  def index
    
  end
    
  # GET /carts/delivery
  def delivery
    @address = session[:delivery].nil? ? Address.new : session[:delivery]
  end
  
  # POST /carts/delivery
  def delivery_address
    params[:address][:customer] = current_customer
    
    @address = Address.new(params[:address])

    respond_to do |format|
      if @address.valid?
        session[:delivery] = @address
        
        format.html { redirect_to carts_payment_path }
      else
        format.html { render action: "delivery" }
      end
    end
  end  
  
  def payment
    
  end
  
  def checkout
  
  end
end