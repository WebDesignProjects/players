class PlayersController < ApplicationController
  
  def index
    @players = Player.all
  end
  
  def new
  end
  
  def create
    player = Player.new(player_params)
    
    if player.save
      redirect_to "/players"
    else
      flash[:errors] = player.errors.full_messages
      redirect_to "/players/new"
    end
  end
  
  #Add the show action
  def show
    @player = Player.find(params[:placeholder_for_id_of_player])
  end
  
  #Add the edit action
  def edit
    @player = Player.find(params[:placeholder_for_id_of_player])
  end
  
  #Add patch update
  def update
    player = Player.find(params[:placeholder_for_id_of_player])
    
    if player.update(player_params)
      redirect_to "/players"
    else
      flash[:errors] = player.errors.full_messages
      redirect_to "/players/#{player.id}/edit"
      
    end
  end
  
  #Add action Destroy
  def destroy
    player = Player.find(params[:placeholder_for_id_of_player])
    
    player.destroy
    redirect_to "/players"
  end
  
  

  
  
    
private
   def player_params
     params.require(:player).permit(:first_name, :last_name)
   end
end
