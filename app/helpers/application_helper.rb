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
end
