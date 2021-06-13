Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :posts, only: [:index, :show, :new, :create, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  resources :pasas, only: [:index, :show] do
    get '/autocomplete_facility/:facility', on: :collection, action: :autocomplete_facility
  end
  resources :genres, only: [:index, :show]
  get 'search' => 'searches#search'
end
