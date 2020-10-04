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

  def show
    @post = Post.find_by(id:params[:id])
  end

  def edit
    @post = Post.find_by(id:params[:id])
  end

  def update
    @post = Post.find_by(id:params[:id])

    @post.content = params[:content]

    if @post.save
      redirect_to('/spot/index')
    else
      render("post/edit")
    end
  end

  def destroy
    @post = Post.find_by(id:params[:id])
    @post.destroy

    redirect_to("/spot/index")
  end
end
