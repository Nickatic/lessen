
Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :lessons, only: [:index, :show, :new, :create] do
    get 'live', to: 'lessons#live'
    resources :participations, only: [:index, :create, :destroy]

    resources :reviews, only: [:new, :create]

    resources :messages, only: :create
  end

  resources :participations, only: [:index, :destroy]

  resources :users do
    resources :participants, only: [:show, :edit]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
