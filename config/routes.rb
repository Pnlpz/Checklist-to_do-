Rails.application.routes.draw do
  get 'checklists/create'
  resources :activities, only: :index do
  resources :checklists, only: :create
  end
  resources :checklists, only: [:index, :destroy]
  root to: 'activities#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
