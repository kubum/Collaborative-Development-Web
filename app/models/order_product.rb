class OrderProduct < ActiveRecord::Base
  belongs_to :stock
  belongs_to :order
  
  validates :quantity, :numericality => { :greater_than_or_equal_to => 1 }
  
  def total_price
    stock.price * quantity    
  end
end
