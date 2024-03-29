class PostsController < ApplicationController
  before_action :set_post,only: [:edit,:update,:destroy]
  
  def index
    @post=Post.all
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
  
  def destroy
    @post.destroy
    redirect_to posts_url,notice: "投稿を削除しました"
  end
  
end

private
  def post_params
    params.require(:post).permit(:title, :url)
  end
  def set_post
    @post=Post.find(params[:id])
  end
