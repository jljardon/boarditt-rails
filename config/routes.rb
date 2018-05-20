Rails.application.routes.draw do
  post '/login' => 'sessions#create'
  delete "/logout", to: "sessions#destroy"

  resources :users
  root to: 'application#home'
end
