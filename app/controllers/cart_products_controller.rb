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
  
  def update
    @cart_product = CartProduct.find(params[:id])

    respond_to do |format|
      if @cart_product.update_attributes(params[:cart_product])
        format.html { redirect_to :back, notice: 'Cart was successfully updated.' }
      else
        format.html { redirect_to :back, alert: 'Cart cannot be updated.' }
      end
    end
  end
  
  def destroy
    @cart_product = CartProduct.find(params[:id])
    @cart_product.destroy

    respond_to do |format|
      format.html { redirect_to :back, :notice => "Product was removed successfully from your cart" }
    end
  end
end