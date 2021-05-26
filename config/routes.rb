Rails.application.routes.draw do
  resources :documents
  resources :users
  resources :sessions, only: [:create, :destroy]
  resources :firstpages

  root 'documents#index'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/get_current_user', to: 'sessions#get_current_user'


  # resources :users do 
  #   resources :documents
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


