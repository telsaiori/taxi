class TeamsController < ApplicationController
  before_action :is_owner?
  before_action :authenticate_user!
  
  def new
    @team = Team.new
  end

  def create
    @team = current_user.build_team(team_params)

    if @team.save
      flash[:notice] = "成功新增資料"
      redirect_to root_url
    else
      flash[:warning] = "新增資料失敗"
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
end
