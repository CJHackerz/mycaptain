class CommentsController < ApplicationController
  
  def create
  	@post = Post.find(params[:post_id])
  	@comment = Comment.create(params[:comment].permit(:content))
  	@comment.post_id = @post.id
  	
  	if user_signed_in?
  		@comment.user_id = current_user.id
  	elsif admin_signed_in?
  		@comment.admin_id = current_admin.id
  	end

  	if @comment.save
  		redirect_to :back
  	else
  		render 'new'
  	end
  end

end
