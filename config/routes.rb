Rails.application.routes.draw do
  post '/login' => 'sessions#create'
  
  resources :users
  root to: 'application#home'
end
