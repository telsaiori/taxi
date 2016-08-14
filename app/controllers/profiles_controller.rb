class ProfilesController < ApplicationController
  before_action :authenticate_user!


  def new
    @user = current_user
    @profile = current_user.build_profile
  end

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      redirect_to root_url
    end

  end

  private

  def profile_params
    params.require(:profile).permit(:name, :car_age, :capacity, car_ids:[])
  end
end
