Rails.application.routes.draw do
  get 'custom_fields/index'

  devise_for :users
  resources :contacts
  resources :fields
end
