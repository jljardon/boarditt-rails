Rails.application.routes.draw do
  get 'posts/new'
  post 'posts/create'
  get 'posts/edit'
  patch 'posts/update'
  delete 'posts/destroy'
  post '/login' => 'sessions#create'
  delete "/logout", to: "sessions#destroy"

  # resources :users

  resources :users do
   resources :posts
 end

  root to: 'application#home'
end
