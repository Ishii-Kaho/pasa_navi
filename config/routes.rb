Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'homes#top'
  resources :users, only: %i[show edit update destroy]
  resources :posts, only: %i[index show new create destroy] do
    resources :favorites, only: %i[create destroy]
    resources :comments, only: %i[create destroy]
  end
  resources :pasas, only: %i[index show]
  resources :genres, only: %i[index show]
end
