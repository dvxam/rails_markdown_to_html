class PostsController < ApplicationController
  def index
    @posts = Post.all_in

    @post = Post.new
  end

  def create
    @post = Post.new params[:post]
    @post.save
    redirect_to root_path
  end
end
