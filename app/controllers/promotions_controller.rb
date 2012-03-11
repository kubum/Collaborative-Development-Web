class PromotionsController < ApplicationController
  def image
    promotion = Promotion.find(params[:promotion_id])
    image   = promotion.image
    
    send_data image, :type     => 'image/jpeg', 
                     :filename => 'promotion_image_#{promotion.id}', 
                     :disposition => 'inline'
  end
end
