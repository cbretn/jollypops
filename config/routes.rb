Rails.application.routes.draw do

  get 'space_tags/index'
  get 'space_tags/new'
  get 'space_tags/create'
  devise_for :users
  resources :users, only: [:show]
  resources :spaces do

    resources :bookings, only: [:index, :new, :create, :show]

    resources :reviews, only: [:index, :new, :create]
  end

  resources :bookings, only: [] do
    resources :messages, only: [:index, :create]
  end

  resources :space_tags, only: [:index, :new, :create]

  get '/bookings', to: 'bookings#user'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
