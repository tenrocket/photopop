class HomeController < ApplicationController
	skip_filter :ensure_logged_in

	def index
	end

end