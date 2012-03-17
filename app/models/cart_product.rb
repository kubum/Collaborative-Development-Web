class CartProduct < ActiveRecord::Base
  belongs_to :stock
  belongs_to :cart
  
  def total_price
    stock.salesPrice * quantity    
  end
end
