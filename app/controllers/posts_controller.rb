class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "投稿しました!"
    else
      render :new
    end
  end

  def show
    set_post
    @post = Post.find(params[:id])    
  end

  def edit
    set_post
    @post = Post.find(params[:id])
  end

  def update
    set_post
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path, notice: "投稿を編集しました!"
    else
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def set_post
    @post =Post.find(params[:id])
  end
end
