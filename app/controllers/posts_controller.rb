class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :upvote, :downvote]

  # GET /posts
  # GET /posts.json
  def index
    if user_signed_in?
      @posts = Post.where(workshop_id: current_user.workshop_id)
      # @posts = Post.where(workshop_id: current_user.workshop_id)
    elsif admin_signed_in?
      @posts = Post.where(admin_id: current_admin.id)
    else
      redirect_to new_user_session_path
    end
  end
  # GET /posts/1
  # GET /posts/1.json
  def show
    if !(admin_signed_in?)
      authenticate_user!
    end
    
    @comments = Comment.where(post_id: @post)
  end

  # GET /posts/new
  def new
    authenticate_admin!
    flash[:danger] = "Must be signed in as a captain to create a post"
    @post = current_admin.posts.build
  end

  # GET /posts/1/edit
  def edit
    authenticate_admin!
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = current_admin.posts.build(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
        @post.workshop_id = current_admin.workshop_id

      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    authenticate_admin!
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote

    respond_to do |format|
      
      format.html{redirect_to :back}
      format.js{render layout: false}
      
      @post.upvote_by current_user if user_signed_in?
      @post.upvote_by current_admin if admin_signed_in?
    end
  end

  def downvote
    if user_signed_in?
      @post.downvote_by current_user
      redirect_to :back
    elsif admin_signed_in?
      @post.downvote_by current_admin
      redirect_to :back
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :admin_id,:cover, :workshop_id, stuffs_attributes: [ :id,:image,:tag, :_destroy], embedurls_attributes: [:id, :url,:tag, :_destroy])
    end
end
