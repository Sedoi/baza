Rails.application.routes.draw do


   resources :products

  get "products/option"

  get 'dashboard/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'


end
