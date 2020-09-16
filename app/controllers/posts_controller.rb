class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def view
    @post = Post.find_by(id: params[:id])
  end

  def create
    @post = Post.new(content: params[:content])
    @post.save 
    @post = Post.new(title: params[:title])
    @post.save 
    redirect_to("/")
  end
end
