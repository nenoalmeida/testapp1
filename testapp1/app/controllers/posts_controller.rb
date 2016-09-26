class PostsController < ApplicationController
  def index
  end
  
  def new 
    @post = New.post
  end
end
