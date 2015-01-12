class Photo
	include Mongoid::Document
	field :caption


	mount_uploader :photo_image, PictureUploader
	field :remove_photo_image

	belongs_to :portfolio
end