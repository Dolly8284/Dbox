class SharingsController < ApplicationController

  def index
    @sharing = Sharing.all
    # @sharing = Sharing.where("created_at > ?" , Time.now.beginning_of_day)
    # @all_sharing = Sharing.where("user_id = ?", params[:user_id])
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
