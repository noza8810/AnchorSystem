require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
<<<<<<< HEAD
    config.storage :fog
    config.fog_provider = 'fog/aws'
    config.fog_directory  = 'anchorpictures' # 作成したバケット名を記述
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'], # 環境変数
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'], # 環境変数
      region: 'ap-northeast-1',   # アジアパシフィック(東京)を選択した場合
      path_style: true
    }
end 
=======
  config.storage :fog
  config.fog_provider = 'fog/aws'
  config.fog_directory  = 'anchorsystem'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region: ENV['AWS_DEFAULT_REGION'],
    path_style: true
  }

end
>>>>>>> 0103ccb697660589c1b76f740defa6e2dfd5804e