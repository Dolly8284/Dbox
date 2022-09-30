class PostsController < ApplicationController
<<<<<<< HEAD
=======
  # before_action :authenticate_user!, :except => [:index, :show]
>>>>>>> 3c5936d... receiving post
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.order(created_at: :desc)
    @post = Post.new
<<<<<<< HEAD
=======
    @posts = current_user.posts.all.order(created_at: :desc)
    @p_posts = Post.includes(:user).where("posts.is_public = 'Public'")
>>>>>>> 3c5936d... receiving post
  end

  def create
    @post = Post.new(posts_params)
    if @post.save
     redirect_to posts_path
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
    
  end

  def find_post
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(posts_params)
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path 
  end
  
  def file_size 
    uploaded_file_file_size 
end

  private
  def posts_params
   params.require(:post).permit(:user_id, :avatar,:image)
  end
end







