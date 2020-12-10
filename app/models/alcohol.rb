class Alcohol < ApplicationRecord
  mount_uploader :image, ImageUploader  
  mount_uploader :placephoto, ImageUploader  
  
  validates :name, presence: true
  
  
  scope :search, -> (search_params) do   #検索機能
    return if search_params.blank?
    name_like(search_params[:name])
  end  
  scope :name_like, -> (name) { where('name LIKE ?', "%#{name}%") if name.present? }
  
end
