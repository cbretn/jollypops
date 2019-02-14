Rails.application.routes.draw do
  devise_for :users
  resources :spaces do

    resources :bookings, only: [:index, :new, :create, :show] do
      resources :messages, only: [:index, :create]
    end

    resources :reviews, only: [:index, :new, :create]
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
