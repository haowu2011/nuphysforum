class UserProfilesController < ApplicationController

  def index
    @user_profiles = UserProfile.all
  end

  def show
    @user_profile = UserProfile.find_by(id: params[:id])
  end

  def new
  end

  def create
    @user_profile = UserProfile.new
    @user_profile.user_class = params[:user_class]
    @user_profile.enrollment_year = params[:enrollment_year]
    @user_profile.user_major = params[:user_major]
    @user_profile.user_id = params[:user_id]

    if @user_profile.save
      redirect_to "/user_profiles/#{ @user_profile.id }"
    else
      render 'new'
    end
  end

  def edit
    @user_profile = UserProfile.find_by(id: params[:id])
  end

  def update
    @user_profile = UserProfile.find_by(id: params[:id])
    @user_profile.user_class = params[:user_class]
    @user_profile.enrollment_year = params[:enrollment_year]
    @user_profile.user_major = params[:user_major]
    @user_profile.user_id = params[:user_id]

    if @user_profile.save
      redirect_to "/user_profiles/#{ @user_profile.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @user_profile = UserProfile.find_by(id: params[:id])
    @user_profile.destroy


    redirect_to "/user_profiles"
  end
end
