class Post < ActiveRecord::Base
	
	has_attached_file :image, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "150x150#"},
	:url => "/assets/images/:id/:style/:basename.:extension",
	:path => ":rails_root/public/assets/images/:id/:style/:basename.:extension"

	validates_attachment_presence :image
	validates_attachment_size :image, :less_than => 5.megabytes
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
