class StocksController < ApplicationController
  def index
    @products = Stock.page(params[:page]).per(5)
  end
  
  def image
    product = Stock.find(params[:stock_id])
    image   = product.image
    
    send_data image, :type     => 'image/jpeg', 
                     :filename => 'product_image_#{product.id}', 
                     :disposition => 'inline'
  end
end