class AdminsController < ApplicationController
	def show
		find_admin
	end

	def index
		@admins = Admin.all
	end

	private

	def find_admin
		@admin = Admin.find(params[:id])
	end
end
