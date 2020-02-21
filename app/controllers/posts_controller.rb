class PostsController < ApplicationController
  before_action :logged_in_user, only: %I[new create]

  def new
  @post = Post.new
  end

  def create
  @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
  @post.user_id = current_user.id
      format.html { redirect_to root_url, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def logged_in_user
    redirect_to login_path unless logged_in?
  end
  
end
