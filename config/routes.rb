Rails.application.routes.draw do
  resources :users
  resources :posts

  post '/login', to: 'auth#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
