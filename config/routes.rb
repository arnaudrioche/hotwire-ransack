Rails.application.routes.draw do
  resources :users
  resources :products
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
