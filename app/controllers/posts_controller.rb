class PostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      @post.user_id = current_user.id
      flash.now[:success] = 'Post was successfully created.'
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def index
    @posts = Post.all.sort{|a,b| b.created_at <=> a.created_at }
  end

  private

  def post_params
    params.require(:post).permit(:heading, :content)
  end

  def logged_in_user
    unless logged_in?
    flash[:notice] = 'Kindly login.'
    redirect_to login_path 
  end
end
end
