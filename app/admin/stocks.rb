ActiveAdmin.register Stock do
  index do
    column :id
    column :name
    column :salesPrice do |product|  
      number_to_currency product.salesPrice
    end
    # column :unitPrice
    # column :description
    column :delivery
    column :platform
    column :stockLevel
    # column :reorderLevel
    column :noOfDownloads
    column :total_sales
    # column :image
    # column :sales_since_audit
    
    default_actions
  end
  
  show do |product|
    attributes_table do
      row :id
      row :image do
        image_tag(stock_image_path(product), :style => "width: 600px;")
      end
    end
  end
  
  form do |f|
    f.inputs "Product details", :multipart => true do
      f.input :name
      f.input :salesPrice
      f.input :unitPrice
      f.input :description
      f.input :delivery, :as => :select, :collection => ['PHYSICAL','DOWNLOAD','BOTH'], :include_blank => false
      f.input :platform, :as => :select, :collection => ['XBOX','PS3','WII','PC','DS'], :include_blank => false
      f.input :stockLevel
      f.input :reorderLevel
      f.input :noOfDownloads
      f.input :total_sales
      f.input :image, :as => :file
      f.input :sales_since_audit
      f.input :stock_category_id, :as => :select, :collection => StockCategory.all, :include_blank => false
      f.input :featured, :as => :boolean
    end
    f.buttons
  end
end
