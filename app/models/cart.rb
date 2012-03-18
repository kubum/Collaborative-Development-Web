class Cart < ActiveRecord::Base
  belongs_to :customer
  
  validates :customer_id, :uniqueness => true
  
  has_many :cart_products, dependent: :destroy
  
  def add_product(stock_id)
    current_product = cart_products.find_by_stock_id(stock_id)
    if current_product
      current_product.quantity += 1
    else
      current_product = cart_products.create!(stock_id: stock_id, quantity: 1)
    end
    
    current_product
  end
  
  def total_price
    cart_products.to_a.sum {|item| item.total_price }
  end
  
  def total_count
    cart_products.to_a.sum {|item| item.quantity }
  end
end
