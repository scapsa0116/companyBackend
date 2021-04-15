Rails.application.routes.draw do
  resources :documents
  resources :users
  root 'documents#index'
  resources :users do 
    resources :documents
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


