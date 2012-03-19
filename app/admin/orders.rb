ActiveAdmin.register Order do
  filter :created_at
  filter :updated_at
  filter :status, :as => :select, :collection => Order.statuses
  
  actions :index, :show, :edit, :destroy
  
  index do
    column :id
    column :customer
    column(:status) { |order| order.status }
    column :created_at
    column :updated_at
    
    default_actions
  end
  
  show do |order|
    attributes_table do
      row :id
      row :status
      row :customer
      row :created_at
      row :updated_at
      
      row :address do
        ul do
          li order.address.address
          li order.address.city
          li order.address.postcode
          li order.address.mobile_number
          li order.address.email          
        end
      end
      
      row :order_products do
        table do
          tr do
            th "Title"
            th "Quantity"
            th "Price"
          end
          
          order.order_products.each do |order_product|
            tr do
              td order_product.stock.name
              td order_product.quantity
              td number_to_currency(order_product.total_price)
            end
          end      
        end
      end
      
      row :total do
        number_to_currency order.total_price
      end
    end
  end
  
  form do |f|
    f.inputs "Order details", :multipart => true do
      f.input :status, :as => :select, :collection => Order.statuses, :include_blank => false    
    end
    
    f.buttons
  end
end
