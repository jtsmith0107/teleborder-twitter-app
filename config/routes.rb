Rails.application.routes.draw do
  resources :users
  resource :session
  resources :twitter_users
  
  root to: 'static_pages#root'
  post '/users/guest', to: 'users#guest'
end
