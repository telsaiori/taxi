class TeamsController < ApplicationController
  before_action :is_owner?
  before_action :authenticate_user!
  before_action :set_team, only:[:edit, :update]
  
  def new
    @team = Team.new
  end

  def create
    @team = current_user.build_team(team_params)

    if @team.save
      flash[:success] = "成功新增資料"
      redirect_to root_url
    else
      flash[:warning] = "新增資料失敗"
      redirect_to root_url
    end
  end

  def edit
  end

  def update
    if @team.update(team_params)
      flash[:success] = "成功修改資料"
      redirect_to root_url
    else
      flash[:warning] = "修改資料失敗"
      redirect_to root_url
    end
  end

  private

  def is_owner?
    unless current_user.is_owner
      redirect_to root_url
    end
  end

  def team_params
    params.require(:team).permit(:name, :image, :profile, :contact, :payment)
  end

  def set_team
    @team = current_user.team
  end
end
