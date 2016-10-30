Rails.application.routes.draw do


  get 'products/index'
  get 'products/new', to: 'products#new'
  resources :products


  get 'dashboard/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'
end
