Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'
  resources :users, only: %i[show edit update destroy]
  resources :posts, only: %i[index show new create destroy] do
    resource :favorites, only: %i[create destroy]
    resources :comments, only: %i[create destroy]
  end
  resources :pasas, only: %i[index show] do
    get '/autocomplete_facility/:facility', on: :collection, action: :autocomplete_facility
  end
  
  resources :genres, only: %i[index]
  get 'gourmet' => 'genres#gourmet'
  get 'toilet' => 'genres#toilet'
  get 'smoking' => 'genres#smoking'
  get 'search' => 'searches#search'
end
