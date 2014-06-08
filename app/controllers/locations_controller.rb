class LocationsController < ApplicationController
	respond_to :json

	def index
		@locations = Location.all
		response = HTTParty.get('http://api.tiles.mapbox.com/v1')
	end

	def new
		@new_location = Location.new
	end

	def create
		@new_location = Location.new(location_params)
		if @new_location.save
			redirect_to locations_path
		else
			render :new, notice: "Your location was not created."
		end
	end

	def show
		@location = Location.find(params[:id])
	end

	private

	def location_params
		params.require(:location).permit!
	end

end
