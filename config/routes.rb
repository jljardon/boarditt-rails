Rails.application.routes.draw do
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
