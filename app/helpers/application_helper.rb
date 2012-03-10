module ApplicationHelper
  def show_message(notice = nil)
    content_tag("div", notice, { :class => "notice" }) unless notice.nil?
  end
  
  def show_description(description)
    if description.length > 100
      description[0..100] + "..."
    else
      description
    end
  end
  
  def in_stock(stock)
    if stock > 0 
      text = "In stock: #{stock}"
      attributes = { :class => "inStock" }
    else
      text = "Out of stock"
      attributes = { :class =>  "outStock" }
    end
    
    content_tag("p", text, attributes)
  end
  
  def price_sort_select(params)
    options = []
    options << ["--", "asd", stocks_sort_price_path(:priceLevel => nil)]
    options << ["Lowest first", stocks_sort_price_path(:priceLevel => :asc)]
    options << ["Highest first", stocks_sort_price_path(:priceLevel => :desc)]
    
    selected = stocks_sort_price_path(:priceLevel => params[:priceLevel])
    
    select_tag "priceLevel", options_for_select(options, selected)
  end
  
  def li_left_sort(title, route)
    attributes = {  }
    attributes[:class] = "currentSort" if current_page?(route)
    content_tag("li", link_to(title, route), attributes)
  end
end
