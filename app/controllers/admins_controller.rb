class AdminsController < ApplicationController
	def show
		find_admin
	end

	private

	def find_admin
		@admin = Admin.find(params[:id])
	end
end
