class ProfilesController < ApplicationController
  before_action :authenticate_user!


  def new
    @profile = current_user.build_profile
  end

  def create
    new_car_id_set = params[:car_select].map{|i| i.to_i}.uniq
    # old_car_id_set = ProfileCar.where(profile_id: current_user.profile.id).select(:id).map{|i| i.id}
    # need_create = new_car_id_set - old_car_id_set
    # need_delete = old_car_id_set - new_car_id_set   
    byebug
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      new_car_id_set.each do |car_id|
        ProfileCar.create(profile_id: current_user.profile.id, car_id: car_id)
      end

      if params[:custom_car]&&params[:is_custom_car]
        custom_car = params[:custom_car].to_s.strip
        unless custom_car.empty?
          car = Car.where(name: custom_car).first
          if car 
            unless ProfileCar.where(profile_id: current_user.profile.id, car_id: car.id)>0
              ProfileCar.create(profile_id: current_user.profile.id, car_id: car.id)
            end
          else
            car = Car.create(name: custom_car)
            ProfileCar.create(profile_id: current_user.profile.id, car_id: car.id)
          end
        end
      end
      redirect_to root_url
    else
      render action: 'new'
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :car_age, :capacity, :insurance, { 
                              car_ids:[],equiment_ids:[], language_ids:[] })
  end
end
