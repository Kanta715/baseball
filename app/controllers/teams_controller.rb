class TeamsController < ApplicationController
    
  def new
    @team = Team.new
  end
  
  def create
    team_params = params.require(:team).permit(:name)
    @team = Team.new(team_params)
    @team.save
    redirect_to firststep_path
  end
  
  def show
    @team = User.all
  end
end
