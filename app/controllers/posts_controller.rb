class PostsController < ApplicationController
  before_action :set_post,only: [:edit,:update,:destroy]
  def index
    @post=Post.all
  end

  def show
  end

  def edit
  end
  
  def update
    @post.update!(post_params)
    redirect_to posts_path
  end

  def new
    @post = Post.new
  end
  
  def create
    @post=Post.new(post_params)
    @post.save
    redirect_to action: 'index'
  end
  
end

private
  def post_params
    params.require(:post).permit(:id,:title, :url)
  end
  def set_post
    @post=Post.find(params[:id])
  end
