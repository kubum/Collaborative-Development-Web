class SessionsController < Devise::SessionsController
  # POST /customer/sign_in
  def create
    resource = warden.authenticate!(auth_options)
    set_flash_message(:notice, :signed_in) if is_navigational_format?
    sign_in(resource_name, resource)
    
    # Merge carts
    unless @session_cart.nil?      
      # Transfer all products to customer cart
      CartProduct.update_all({:cart_id => @current_cart.id}, {:cart_id => @session_cart.id})
      
      # Recalculate quantity
      sums = @current_cart.cart_products.group(:stock_id).sum(:quantity)
      
      sums.each do |stock_id, quantity|
        if quantity > 1
          @current_cart.cart_products.where(stock_id: stock_id).delete_all          
          @current_cart.cart_products.create!(stock_id: stock_id, quantity: quantity)
        end
      end
      
      # Destroy session cart
      @session_cart.destroy
    end
    
    if after_sign_in_path_for(resource) == carts_delivery_path
      respond_with resource, :location => carts_path
    else
      respond_with resource, :location => after_sign_in_path_for(resource)
    end    
  end  
end