class HomeController < ApplicationController
  def index
    @promotions = Promotion.all
    @featured   = Stock.where(:featured => true).limit(3)
  end

  def shop

  end

  def delivery_type

  end
end
