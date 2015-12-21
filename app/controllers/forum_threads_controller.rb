class ForumThreadsController < ApplicationController
  before_action :set_forum_thread, only: [:show, :edit, :update, :destroy]

  # GET /forum_threads
  # GET /forum_threads.json
  def index
    @forum_threads = ForumThread.all
  end

  # GET /forum_threads/1
  # GET /forum_threads/1.json
  def show
    @responses = Response.where(forum_thread_id: @forum_thread.id)
  end

  # GET /forum_threads/new
  def new
    @forum_thread = current_user.forum_threads.build
  end

  # GET /forum_threads/1/edit
  def edit
  end

  # POST /forum_threads
  # POST /forum_threads.json
  def create
    @forum_thread = current_user.forum_threads.build(forum_thread_params)

    respond_to do |format|
      if @forum_thread.save
        format.html { redirect_to @forum_thread, notice: 'Forum thread was successfully created.' }
        format.json { render :show, status: :created, location: @forum_thread }
      else
        format.html { render :new }
        format.json { render json: @forum_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forum_threads/1
  # PATCH/PUT /forum_threads/1.json
  def update
    respond_to do |format|
      if @forum_thread.update(forum_thread_params)
        format.html { redirect_to @forum_thread, notice: 'Forum thread was successfully updated.' }
        format.json { render :show, status: :ok, location: @forum_thread }
      else
        format.html { render :edit }
        format.json { render json: @forum_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forum_threads/1
  # DELETE /forum_threads/1.json
  def destroy
    @forum_thread.destroy
    respond_to do |format|
      format.html { redirect_to forum_threads_url, notice: 'Forum thread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forum_thread
      @forum_thread = ForumThread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forum_thread_params
      params.require(:forum_thread).permit(:title,:user_id,:workshop_id)
    end
end
