class Photo < ApplicationRecord
  has_attached_file :image, :styles => { :medium => "1080x1080>", :thumb => "300x300>" }, :default_url => "/images/:style/missing.png"
 validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
