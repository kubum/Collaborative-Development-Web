class ImageTypeValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)  
    if object.image_type != "image/jpeg" && !object.image_type.nil?
      object.errors[attribute] = "Image is not in JPEG format"
    end
  end
end