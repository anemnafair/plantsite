class Myplant < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :style => { :medium => "300x300", :thumb => "100x100>"}#, :default_url => "#"   just in case the image fails this will be the default
	#validates_attachment :image, content_type: {content_type: /\Aimage\/.*\Z/ }
end
