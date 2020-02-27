Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :users, only: [:create, :destroy, :show, :update, :index] do
    resources :users, only: [:index]
    resources :artworks, only: [:index]
    resources :comments, only: [:index]
    resources :likes, only: [:index]
    resources :artwork_collections, only: [:index]
  end

  resources :artworks, only: [:create, :destroy, :show, :update] do
    resources :comments, only: [:index]
    resources :likes, only: [:index]
    member do
      post :favorite, to: 'artworks#favorite', as: 'favorite'
      post :unfavorite, to: 'artworks#unfavorite', as: 'unfavorite'
    end 
  end

  resources :artwork_shares, only: [:index, :create, :destroy] do
    member do
      post :favorite, to: 'artwork_shares#favorite', as: 'favorite'
      post :unfavorite, to: 'artwork_shares#unfavorite', as: 'unfavorite'
    end 
  end
  resources :comments, only: [:index, :create, :destroy] do
    resources :likes, only: [:index]
  end

  resources :likes, only: [:index, :create, :destroy, :show, :update]

  resources :artwork_collections, only: [:index, :show, :create, :update, :destroy]
  # get 'users/:id', to: 'users#show', as: 'user'

  # get '/users', to: 'users#index', as: 'users'
  # post '/users', to: 'users#create' 
  # get '/users', to: 'users#new', as: 'new_user'
  # get '/users/:id', to: 'users#show', as: 'user'
  # get '/users/:id', to: 'users#edit', as: 'edit_user'
  # patch '/users/:id', to: 'users#update'
  # put '/users/:id', to: 'users#update'
  # delete '/users/:id', to: 'users#destroy'

  # get '/artworks', to: 'artworks#index', as: 'artworks'
  # post '/artworks', to: 'artworks#create'
  # get '/artworks', to: 'artworks#new', as: 'new_artwork'
  # get '/artworks/:id', to: 'artworks#show', as: 'artwork'
  # get '/artworks/:id', to: 'artworks#edit', as: 'edit_artwork'
  # patch '/artworks/:id', to: 'artworks#update'
  # put '/artworks/:id', to: 'artworks#update'
  # delete '/artworks/:id', to: 'artworks#destroy'
end
