class StocksController < ApplicationController
  def index
    @products = Stock.all
  end
  
  def image
    product = Stock.find(params[:stock_id])
    image   = product.image
    
    send_data image, :type     => 'image/jpeg', 
                     :filename => 'product_image_#{product.id}', 
                     :disposition => 'inline'
  end
end