Rails.application.routes.draw do
  get '/' => 'messages#index'
  
  get '/messages' => 'messages#index'
  post '/messages' => 'messages#create'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  namespace :api do
    namespace :v1 do
      get '/messages' => 'messages#index'
      post '/messages' => 'messages#create'
    end
  end

  mount ActionCable.server => '/cable'
end
