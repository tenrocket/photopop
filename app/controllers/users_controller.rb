class UsersController < ApplicationController
	skip_filter :ensure_logged_in

	def index
		@users = User.all
	end

	def new
		@new_user = User.new
	end

	def create
		@new_user = User.new(user_params)
		if @new_user.save
			redirect_to login_path
		else
			redirect_to users_path, notice: "Sorry, it looks like your registration failed."
		end
	end

	def show
		@user = User.find(params[:id])
		# response = HTTParty.get('')
	end

	private

	def user_params
		params.require(:user).permit!
	end

end
