Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/beers' => 'beers#index'
  post '/beers' => 'beers#create'
  get '/beers/:id' => 'beers#show'

end
