class PostsController < ApplicationController
  before_action :correct_user, only: [:edit, :update]

  def new
    @post = Post.new
    render :edit
  end
  
  def index
    @post = Post.new
    @posts = Post.all
    @user = current_user
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:notice] = "You have created post successfully."
      redirect_to post_path(@post)
    else
      @posts = Post.all
      @user = current_user
      render :index
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "You have updated post successfully."
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
    @posts = @user.posts
    @post_new = Post.new
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :shop_name, :shop_address,)
  end

  def correct_user
    @post = Post.find(params[:id])
    @user = @post.user
   unless @user == current_user
    redirect_to(posts_path) 
   end
  end
end
