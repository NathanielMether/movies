Rails.application.routes.draw do
  get '/movies' => 'movies#index'
  get '/movie/new' => 'movies#new'
  get '/movies/:id' => 'movies#show'
  post '/movies' => 'movies#create'
end
