class CartProduct < ActiveRecord::Base
  belongs_to :stock
  belongs_to :cart
  
  validates :quantity, :numericality => { :greater_than_or_equal_to => 1 }
  
  def total_price
    stock.salesPrice * quantity    
  end
end
