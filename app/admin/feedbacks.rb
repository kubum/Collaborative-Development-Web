ActiveAdmin.register Feedback do
  index do
    column :id
    column :name
    column :email
    column :message
    column :created_at
    
    default_actions
  end
end
