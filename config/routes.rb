Rails.application.routes.draw do
  get '/auth/:provider/callback' => 'sessions#create'
  # get '/auth/google_oauth2/callback' => 'sessions#create'
  post '/login' => 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users do
    resources :posts, only: [:index, :show, :new, :edit]
  end

  resources :posts do
    resources :comments
  end

  resources :comments
  resources :posts
  root to: 'application#home'
end
