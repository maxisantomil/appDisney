Rails.application.routes.draw do

  #me muestra todas las peliculas 
  get '/movies', to:'movies#index'

  #me muestra todos los personajes
  get '/characters', to:'characters#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
