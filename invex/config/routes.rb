Rails.application.routes.draw do
  resources :scenes
  resources :chapters
  resources :scripts
  resources :histories
  # devise_for :users

  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to: 'histories#index'

  get 'scenes_cont', to: 'scenes#cont'
  post 'scenes_cont', to: 'scenes#cont'

  get 'scene3', to: 'scenes#scene3'

  get 'scene4', to: 'scenes#scene4'

  get 'congratulation', to: 'scene#congratulation'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
