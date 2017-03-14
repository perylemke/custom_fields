Rails.application.routes.draw do
  get 'fields/index'

  root to: 'contacts#index'
  devise_for :users
  resources :contacts
  resources :fields
end
