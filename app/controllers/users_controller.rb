class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	def sign_in
		redirect_to :back if admin_signed_in?
	end

	def index
	end

	
end

