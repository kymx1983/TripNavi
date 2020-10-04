class PostController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.content = params[:content]

    if @post.save
      redirect_to('/spot/index')
    else
      render("post/new")
    end
  end

  def edit
  end
end
