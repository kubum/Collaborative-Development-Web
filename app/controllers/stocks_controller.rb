class StocksController < ApplicationController
  def index
    @products = Stock.scoped
    
    @products = @products.ordered("salesPrice #{params[:priceLevel]}") if need_to_sort params[:priceLevel]
    
    @products = @products.page(params[:page]).per(5)
  end
  
  def image
    product = Stock.find(params[:stock_id])
    image   = product.image
    
    send_data image, :type     => 'image/jpeg', 
                     :filename => 'product_image_#{product.id}', 
                     :disposition => 'inline'
  end
  
  private 
    def need_to_sort(param)
      ["asc", "desc"].include? param
    end
end