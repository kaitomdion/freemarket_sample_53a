class ImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
    include CarrierWave::MiniMagick

    process resize_to_fit: [800, 800]

    class ImageUploader < CarrierWave::Uploader::Base
    if Rails.env.development?
      storage :file
    elsif Rails.env.test?
      storage :file
    else
      storage :fog
    end
  
    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end
  
    def extension_whitelist
      %w(jpg jpeg gif png)
    end
  
    def filename
      "#{secure_token}.#{file.extension}" if original_filename.present?
    end
  
    protected
  
    def secure_token
      var = :"@#{mounted_as}_secure_token"
      model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
    end
  end
end