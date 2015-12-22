class ResponsesController < ApplicationController
  before_action :authenticate_either!
	def create
  	@forum_thread = ForumThread.find(params[:forum_thread_id])
  	@response = Response.create(params[:response].permit(:content))
  	@response.forum_thread_id = @forum_thread.id
  	
  	if user_signed_in?
  		@response.user_id = current_user.id
  	elsif admin_signed_in?
  		@response.admin_id = current_admin.id
  	end

  	if @response.save
  		redirect_to :back
  	else
  		render 'new'
  	end
  end

  private

  def authenticate_either!
    authenticate_user! if !(admin_signed_in?)
  end
end
