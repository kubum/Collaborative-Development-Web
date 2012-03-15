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
    options << ["--", "asd", stocks_sort_path]
    options << ["Lowest first", stocks_sort_path(:sort => "priceLevel", :order => "asc")]
    options << ["Highest first", stocks_sort_path(:sort => "priceLevel", :order => "desc")]
    
    selected = stocks_sort_path(:sort => params[:sort], :order => params[:order])
    
    select_tag "priceLevel", options_for_select(options, selected)
  end
  
  def li_left_sort(title, route)
    attributes = {  }
    attributes[:class] = "currentSort" if current_page?(route)
    content_tag("li", link_to(title, route), attributes)
  end
  
  def li_left_category(title, route, params)
    attributes = {  }
    attributes[:class] = "current" if !params[:category_id].nil? && params[:category_id].to_i == route[:category_id]
    content_tag("li", link_to(title, stocks_sort_path(route)), attributes)
  end
  
  def li_all_products(title, route, params)
    puts params.inspect
    attributes = {  }
    attributes[:class] = "current" if params[:controller] == "stocks" && params[:action] == "index" && params[:category_id].nil? && params[:featured].nil?
    
    content_tag("li", link_to(title, route), attributes)
  end
  
  def li_featured(title, route, params)
    attributes = {  }
    attributes[:class] = "current" if params[:controller] == "stocks" && params[:action] == "index" && params[:category_id].nil? && !params[:featured].nil?
    
    content_tag("li", link_to(title, route), attributes)
  end
  
  def product_image(product)
    unless product.image.nil?
      image_tag(stock_image_path(product), :alt => product.name, :style => "width: 130px;")
    else
      image_tag('no_thumbnail.png', :alt => product.name, :style => "width: 130px;")
    end
  end
end
