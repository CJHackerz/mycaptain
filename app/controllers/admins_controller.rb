class AdminsController < ApplicationController
	def show
		find_admin
	end

	def index
		@admins = Admin.where(workshop_id: !nil)
	end

	private

	def find_admin
		@admin = Admin.find(params[:id])
	end
end
