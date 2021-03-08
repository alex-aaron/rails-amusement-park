Rails.application.routes.draw do
  root 'static#home'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  resources :users, only: [:new, :create, :update, :show]
  resources :attractions, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
