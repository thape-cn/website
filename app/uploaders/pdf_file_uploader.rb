class PdfFileUploader < CarrierWave::Uploader::Base
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(pdf)
  end

  def content_disposition
    "attachment;filename=#{file.original_filename}"
  end
end
