class UsersController < ApplicationController
	def show
		find_user
	end

	def sign_in
		redirect_to :back if admin_signed_in?
	end

	def index
	end

	private

	def find_user
		@user = User.find(params[:id])
	end
end

