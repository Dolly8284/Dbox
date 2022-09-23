# frozen_string_literal: true

 class Users::RegistrationsController < Devise::RegistrationsController
  
  # GET /resource/sign_up
  def new
    @user = User.new
  end

  # POST /resource
  def create
    @user = User.new(user_params)
      if @user.save
        respond_to do |format|
        UserMailer.with(user: @user).sharing_email.deliver_later

        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
      else
        render :new, status: :unprocesseable_entity
    end
  end

  # DELETE /resource
  def destroy
  @users = User.find(params[:id])
    @user.destroy
    redirect_to user_registration_path
  end

  private 
   def user_params
    params.require(:user).permit(:email, :encrypted_password, :password, :first_name, :last_name, :date_of_birth, :gender)
  end
end