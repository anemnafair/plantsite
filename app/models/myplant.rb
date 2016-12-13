class Myplant < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :style => { :medium => "300x300", :thumb => "100x100>"}#, :default_url => "#"   just in case the image fails this will be the default
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"] 
	#validates_something_else # Other validations that conflict with Paperclip's

end
