class SharingsController < ApplicationController
  before_action :change_re_direction, only: :new_shared

  def index
    @sharin = Sharing.all
    # @sharedfile = Sharedfile.where("created_at > ?" , Time.now.beginning_of_day)
    # @all_sharedfiles = Sharedfile.where("user_id = ?", params[:user_id])
  end 

  def new_shared
    # binding.pry
    @post = Post.find(params[:id])
    @new_sharing = @post.sharings.create(user_id:@post.user_id)
    redirect_to sharings_path
  end

  def show 

  end

  def change_re_direction
    if params[:post_id].nil?
      redirect_to checkin_path(params[:id]) and return
    end
  end

  private
  def sharing_params
    params.require(:sharing_params).permit(:user_id, :post_id)
  end
end

  
  # def index
  #   @checkin = Checkin.where("created_at > ?" , Time.now.beginning_of_day)
  #   @all_checkins = Checkin.where("section_id = ?", params[:section_id])
  # end
  
  # def new_checkin
  #   @student = Student.find(params[:student_id])
  #   @new_checkin = @student.checkins.create(section_id:@student.section_id)
  #   redirect_to checkins_path
  # end

  # def show
  
  # end
 
  
  # private
  # def new_checkin_params
  #   params.require(:checkin_params).permit(:student_id , :section_id)
  # end

