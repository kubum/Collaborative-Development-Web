class Stock < ActiveRecord::Base
  self.table_name = :stock
  
  scope :ordered, lambda {|*args| 
    { :order => (args.first || 'created_at DESC') } 
  }
end
