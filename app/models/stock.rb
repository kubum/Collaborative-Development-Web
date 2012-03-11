class Stock < ActiveRecord::Base
  self.table_name = :stock
  
  # default_scope {
  #   column_names.reject { |n| n == "image" }
  # }
  
  scope :ordered, lambda {|*args| 
    { :order => (args.first || 'created_at DESC') } 
  }
  
  validates :image, :image_type => true  
  
  attr_accessor :image_type
  
  def image=(input_data)
    return if input_data.nil? 
    
    self.image_type = input_data.content_type.chomp
    
    write_attribute(:image, input_data.read)
  end  
end
