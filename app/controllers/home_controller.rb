class HomeController < ApplicationController
  def index
    @promotions = Promotion.all
    @featured   = Stock.where(:featured => true).limit(3)
  end

  def shop

  end

  def delivery_type

  end

  def payment

  end

  def checkout

  end

  def order_history

  end
end