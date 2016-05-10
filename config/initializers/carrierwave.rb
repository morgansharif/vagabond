require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.cache_dir = "#{Rails.root}/tmp/uploads"

  if Rails.env.production?
    config.storage :fog
    config.fog_directory = Figaro.env.aws_bucket_name
    config.fog_credentials = {
      :provider              => 'AWS',
      :aws_access_key_id     => Figaro.env.aws_access_key_id,
      :aws_secret_access_key => Figaro.env.aws_secret_access_key,
      :region                => Figaro.env.aws_region
    }
  else
    config.storage :file
  end
end
