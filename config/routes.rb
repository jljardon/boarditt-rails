Rails.application.routes.draw do
  get 'votes/create'
  get '/auth/:provider/callback' => 'sessions#create'

  post '/login' => 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users do
    resources :posts, only: [:index, :show, :new, :edit]
  end

  resources :posts do
    resources :comments
  end

  resources :votes, only: [:create, :update]

  resources :comments
  resources :posts
  root to: 'application#home'
end
