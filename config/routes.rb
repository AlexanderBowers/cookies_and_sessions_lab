Rails.application.routes.draw do
  resources :products, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'products#index', as: 'homepage'
  post '/products/index', to: 'products#add'
end
