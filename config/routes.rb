Rails.application.routes.draw do
  get '/' => 'beers#index'



  namespace :api do  
    namespace :v1 do
      get '/beers' => 'beers#index'
      post '/beers' => 'beers#create'
      get '/beers/:id' => 'beers#show'
      patch '/beers/:id' => 'beers#update'
      delete '/beers/:id' => 'beers#destroy'
    end
    namespace :v2 do
      get '/beers' => 'beers#index'
      post '/beers' => 'beers#create'
      get '/beers/:id' => 'beers#show'
      patch '/beers/:id' => 'beers#update'
      delete '/beers/:id' => 'beers#destroy'
    end
  end
end
