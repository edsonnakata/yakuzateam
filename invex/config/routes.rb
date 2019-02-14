Rails.application.routes.draw do
  resources :chapters
  resources :scripts
  resources :histories
  devise_for :users

  root to: 'histories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
