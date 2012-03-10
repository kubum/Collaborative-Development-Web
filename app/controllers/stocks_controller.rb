class StocksController < ApplicationController
  def index
    @products = Stock.scoped
    
    puts params.inspect
    
    # Price sorting
    @products = @products.ordered("salesPrice #{params[:priceLevel]}") if need_to_sort params[:priceLevel]
    # Downloads sorting
    @products = @products.ordered("noOfDownloads #{params[:noOfDownloads]}") if need_to_sort params[:noOfDownloads]    
    # Alphabet
    @products = @products.ordered("name #{params[:name]}") if need_to_sort params[:name]
        
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