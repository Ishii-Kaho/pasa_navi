Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :posts, only: [:index, :show, :new, :create, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  resources :pasas, only: [:index, :show]
  resources :genres, only: [:index, :show]
  get 'search' => 'searches#search'
end
