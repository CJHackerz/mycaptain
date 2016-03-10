class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	def sign_in
		redirect_to :back if admin_signed_in?
	end

	def index
		if admin_signed_in?
			@users = User.where(workshop_id: current_admin.workshop_id)
		else
			@users = User.where(workshop_id: current_admin.workshop_id)
		end
	end

	
end

