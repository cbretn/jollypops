Rails.application.routes.draw do
  devise_for :users
  resources :spaces do

    resources :bookings, only: [:index, :new, :create, :show]

    resources :reviews, only: [:index, :new, :create]
  end

  resources :bookings, only: [] do
    resources :messages, only: [:index, :create]
  end

  get '/bookings', to: 'bookings#user'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
