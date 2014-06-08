module Api

	class ApiPhotosController < ApplicationController
		respond_to :json

		def create
			latitude = params[:latitude]
			longitude = params[:longitude]
			image = params[:image]
			caption = params[:caption]

			location = Location.new latitude:latitude, longitude:longitude
			location.save
			photo = Photo.new image:image, caption:caption, location:location
			photo.save

			render :plain => "Ok"
		end

	end

end
