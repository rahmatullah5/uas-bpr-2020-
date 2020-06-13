Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # root :to => "product_requests#index"
  devise_for :employees
  resources :product_requests
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
