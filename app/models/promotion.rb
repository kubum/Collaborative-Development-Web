class Promotion < ActiveRecord::Base  
  validates :title, :url, :image, :presence => true
  validates :image, :image_type => true  
  
  attr_accessor :image_type
  
  def image=(input_data)
    self.image_type = input_data.content_type.chomp
    
    write_attribute(:image, input_data.read)
  end
end
