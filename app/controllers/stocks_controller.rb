class StocksController < ApplicationController
  def index
    @products = Stock.scoped
    
    # Category
    @products = @products.where(:stock_category_id => params[:category_id]) unless params[:category_id].nil?
    
    # Featured
    @products = @products.where(:featured => 1) unless params[:featured].nil?
        
    # Price sorting
    @products = @products.ordered("salesPrice #{params[:order]}") if need_to_sort :priceLevel, params
    # Downloads sorting
    @products = @products.ordered("noOfDownloads #{params[:order]}") if need_to_sort :noOfDownloads, params
    # Alphabet
    @products = @products.ordered("name #{params[:order]}") if need_to_sort :name, params

    @products = @products.page(params[:page]).per(5)
  end
  
  def image
    product = Stock.find(params[:stock_id])
    image   = product.image
    
    send_data image, :type     => 'image/jpeg', 
                     :filename => 'product_image_#{product.id}', 
                     :disposition => 'inline'
  end
  
  def show
    @product = Stock.find(params[:id])
  end
  
  private 
    def need_to_sort(column, params)
      ["asc", "desc"].include?(params[:order]) && params[:sort] == column.to_s
    end
end