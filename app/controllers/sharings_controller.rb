class SharingsController < ApplicationController
  
  def index
    @sharings = current_user.sharings.order(created_at: :desc)
    @recipes = current_user.recipes.order(created_at: :asc)
    @sharing =  Sharing.joins(:post).where(posts: {is_private: 'Private'})
  end 

  def create
    @post = Post.find(params[:id])
    @new_sharing = @post.sharings.create(params[:post].permit(:user_id))
    redirect_to sharings_path
  end

  def show 
    @sharing = Sharing.all
  end

  private
  def sharing_params
    params.require(:sharing_params).permit(:user_id, :post_id)
  end
end


 