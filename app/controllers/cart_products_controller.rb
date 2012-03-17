class CartProductsController < ApplicationController
  def create
    product = Stock.find(params[:product_id])
    @cart_product = @current_cart.add_product(product.id)

    respond_to do |format|
      if @cart_product.save
        format.js   { @current_item = @line_item }
      else
        format.js   { }
      end
    end
  end
end