class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @post = Post.new
    # binding.pry
    @posts = current_user.posts.all.order(created_at: :desc)
     # @p_post = current_user.posts.where(id: params[:id])

    # @p_posts = Post.all
    # @p_posts = Post.where(:user_id => current_user.id)
    # @posts = Post.all.where('id != ?', current_user)

    # @pr_posts = current_user.posts.where("is_private").order! 'created_at DESC'
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
     redirect_to posts_path
    else
      render 'new'
    end
  end

  def show
    @posts = User.all
    @post = current_user.posts.find(params[:id])
  end

  def find_post
    @post = Post.find(params[:id])
  end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def update
    @post = current_user.posts.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy
    redirect_to posts_path 
  end

  private
  def post_params
   params.require(:post).permit(:user_id, :title, :avatar, :is_public,:is_private)
  end
end