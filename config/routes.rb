Rails.application.routes.draw do
  resources :fields
  get 'custom_fields/index'

  root to: 'contacts#index'
  
  devise_for :users
  resources :contacts
end
