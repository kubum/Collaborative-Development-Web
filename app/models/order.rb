class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :address
  
  has_many :order_products
  
  STATUSES = [ "In process", "Successful", "Declined" ]
  
  validates :customer, :address, :status, :presence => true
  validates :status, inclusion: STATUSES
  
  def transfer_items_from_cart(cart)
    cart.cart_products.each do |cart_product|
      OrderProduct.create!(
        :order => self, 
        :stock => cart_product.stock, 
        :quantity => cart_product.quantity, 
        :price => cart_product.stock.salesPrice
      )      
      
      cart_product.destroy
    end
  end
end
