Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'homes#top'
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :posts, only: [:index, :show, :new, :create, :destroy] do
    resources :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  resources :pasas, only: [:index, :show]
  resources :genres, only: [:index, :show]
end
