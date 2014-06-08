class PhotosController < ApplicationController
	skip_filter :ensure_logged_in
	respond_to :json

	def index
		respond_with Photos.all
	end

	def show
		@photo = Photo.find(params[:id])
		response = HTTParty.get('')
	end
end
