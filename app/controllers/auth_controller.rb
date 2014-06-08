class AuthController < ApplicationController

	def callback
		response = request.env['omniauth.auth']
		redirect_to users_path, notice: "You successfully logged in with Facebook."
	end

end
