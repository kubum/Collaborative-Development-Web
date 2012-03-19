class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :address, dependent: :destroy
  
  has_many :order_products, dependent: :destroy
  
  STATUSES = [ "In process", "Successful", "Declined" ]
  
  validates :customer, :address, :status, :presence => true
  validates :status, inclusion: STATUSES
  
  def transfer_items_from_cart(cart)
    cart.cart_products.each do |cart_product|
      cart_product.stock.total_sales += 1
      cart_product.stock.save!
      
      OrderProduct.create!(
        :order => self, 
        :stock => cart_product.stock, 
        :quantity => cart_product.quantity, 
        :price => cart_product.stock.salesPrice
      )      
      
      cart_product.destroy
    end
  end
  
  def total_price
    order_products.to_a.sum {|item| item.total_price }
  end
  
  def self.statuses
    STATUSES
  end
end
