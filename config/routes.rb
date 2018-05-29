Rails.application.routes.draw do
  get '/auth/:provider/callback' => 'sessions#create'

  post '/login' => 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/users/:provider/callback' => 'sessions#create'
  resources :users, only: [:index, :new, :create, :show] do
    resources :posts, only: [:index, :show, :new, :edit]
  end

  resources :posts do
    resources :comments, only: [:new,:create, :edit, :update, :destroy]
  end

  resources :votes, only: [:create, :update]

  resources :comments, only: [:new,:create, :edit, :update, :destroy]
  root to: 'application#home'
end
