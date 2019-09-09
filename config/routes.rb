Rails.application.routes.draw do
  root to: 'home#index'
  get 'home' => 'home#index'
  get 'users/new' => 'users#new', as: :new_user
  post 'users' => 'users#create'
  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
