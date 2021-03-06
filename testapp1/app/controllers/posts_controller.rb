class PostsController < ApplicationController
  def index
  end
  
  def show
    @post = Post.find(params[:id]) 
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

  private 
  def post_params
  params.require(:posts).permit(:title, :caption)
  end
end
