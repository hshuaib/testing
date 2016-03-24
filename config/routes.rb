Rails.application.routes.draw do
  resources :companies
  resources :applicants
  root to: 'visitors#index'
  devise_for :users, controllers: { registrations: "registrations"}
  resources :users
end
