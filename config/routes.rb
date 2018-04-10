Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #We have seven restful routes and all seven will be located in this file.
  
  #get players is going to the players controller and the index action
  get "players" => "players#index"
  #get players/new is going to the players controller and the new action
  get "players/new" => "players#new"
  
  #post players/new is going to the players controller and the create action
  post "players" => "players#create"
  
  #get players/id is going to the players controller and the show action,
  #However we add a a placeholder
  get "players/:placeholder_for_id_of_player" => "players#show"
  
  #get players/id/edit is going to the players controller and the edit action,
  #However we add a a placeholder
  get "players/:placeholder_for_id_of_player/edit" => "players#edit"
  
  #patch request players/id/patch is going to the players controller and the patch action,
  #However we add a  placeholder
  patch "players/:placeholder_for_id_of_player" => "players#update"
  
  #delete request players/id/patch is going to the players controller and the delete action,
  #However we add a  placeholder
  delete "players/:placeholder_for_id_of_player" => "players#destroy"
  
end
