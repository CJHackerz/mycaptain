class ContributionsController < ApplicationController
	def index
		@contributions = Contribution.all.order("created_at DESC")
	end
	
	def new
		@contribution = current_user.contributions.build
	end

	def create
		@contribution = current_user.contributions.build(contribution_params)

		if @contribution.save
			redirect_to 'contributions#index'
		else
			render 'new'
		end
	end

	private

	def contribution_params
		params.require(:contribution).permit(:title,:content,:workshop)
	end
end
