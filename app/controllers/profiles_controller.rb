class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile, only:[:edit]

  def new
    @profile = current_user.build_profile
  end

  def create
    if params[:car_select]
      new_car_id_set = params[:car_select].map{|i| i.to_i}.uniq
    else
      new_car_id_set = []
    end
    # old_car_id_set = ProfileCar.where(profile_id: current_user.profile.id).select(:id).map{|i| i.id}
    # need_create = new_car_id_set - old_car_id_set
    # need_delete = old_car_id_set - new_car_id_set   
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

      if params[:is_custom_eq] && params[:custom_eq]
        custom_eq = params[:custom_eq].to_s.strip
        unless custom_eq.empty?
          equiment = Equiment.where(name: custom_eq).first
          if equiment
            unless ProfileEquiment.where(profile_id: current_user.profile.id, equiment_id: equiment.id ) > 0
              ProfileEquiment.create( profile_id: current_user.profile.id, equiment_id: equiment.id )
            end
          else
            equiment = Equiment.create(name: custom_eq)
            ProfileEquiment.create(profile_id: current_user.profile.id, equiment_id: equiment.id)
          end
        end
      end

      if params[:is_custom_eq] && params[:custom_eq]
        custom_eq = params[:custom_eq].to_s.strip
        unless custom_eq.empty?
          equiment = Equiment.where(name: custom_eq).first
          if equiment
            unless ProfileEquiment.where(profile_id: current_user.profile.id, equiment_id: equiment.id ) > 0
              ProfileEquiment.create( profile_id: current_user.profile.id, equiment_id: equiment.id )
            end
          else
            equiment = Equiment.create(name: custom_eq)
            ProfileEquiment.create(profile_id: current_user.profile.id, equiment_id: equiment.id)
          end
        end
      end
      redirect_to root_url
    else
      render action: 'new'
    end
  end

  def edit
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :car_age, :capacity, :insurance, { 
                              car_ids:[],equiment_ids:[], language_ids:[] })
  end

  def set_profile
    @profile = Profile.find_by(user_id: current_user.id)
  end

  # def custom(is_custom, custom, db, assosiation, id)
  #   db = db.constantize
  #   assosiation = assosiation.constantize
  #   if is_custom && custom
  #     custom_car = custom.to_s.strip
  #     unless custom_car.empty?
  #       car = db.where(name: custom_car).first
  #       if car 
  #         unless assosiation.where(profile_id: current_user.profile.id, car_id: car.id)>0
  #           assosiation.create(profile_id: current_user.profile.id, car_id: car.id)
  #         end
  #       else
  #         car = db.create(name: custom_car)
  #         assosiation.create(profile_id: current_user.profile.id, car_id: car.id)
  #       end
  #     end
  #   end
  # end
end

