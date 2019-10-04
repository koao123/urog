class PostsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def new
    @post = Post.new
  end
  
  def create
    @post=Post.new(book_params)
    @post.save
    redirect_to action: 'index'
  end
  
end

private
  def book_params
    params.require(:post).permit(:title, :url)
  end