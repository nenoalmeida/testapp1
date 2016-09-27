class PostsController < ApplicationController
  def index
  end
  
  def new 
    @post = Post.post
  end
  
  def create
  @post = Post.new(post_params)
  if @post.save
    redirect_to @post
  else
    render :new
  end
  end
end
