Rails.application.routes.draw do
  resources :capitulos
  get 'home/index'
  root 'home#index' 

  resources :artefatos
  resources :roteiros
  resources :historia
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
