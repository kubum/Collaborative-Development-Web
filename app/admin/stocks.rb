ActiveAdmin.register Stock do
  index do
    column :number
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
      row :number
      row :image do
        # image_tag(product.image)
      end
    end
  end
  
  form do |f|
    f.inputs "Product details", :multipart => true do
      f.input :id
      f.input :name
      f.input :salesPrice
      f.input :unitPrice
      f.input :description
      f.input :delivery
      f.input :platform
      f.input :stockLevel
      f.input :reorderLevel
      f.input :noOfDownloads
      f.input :total_sales
      f.input :image,:as => :file
      f.input :sales_since_audit
    end
    f.buttons
  end
end
