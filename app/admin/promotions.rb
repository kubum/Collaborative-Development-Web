ActiveAdmin.register Promotion do
  before_filter { @skip_sidebar = true }  
    
  index do
    column :id
    column :title
    column :url
    column :created_at
    column :updated_at
    
    default_actions
  end
  
  show do |promotion|
    attributes_table do
      row :id
      row :title
      row :url
      row :created_at
      row :updated_at
      
      row :image do
        image_tag(promotion_image_path(promotion))
      end
    end
  end
  
  form do |f|
    f.inputs "Promotion details", :multipart => true do
      f.input :title
      f.input :url
      f.input :image,:as => :file
    end
    
    f.buttons
  end
end
