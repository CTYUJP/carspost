Rails.application.routes.draw do

  devise_for :users, controllers: {
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    sessions:      'users/sessions',
  }

  root to: "posts#index"
  resources :posts, only: [:index, :new, :show, :create, :destroy]
  resources :users, only: [:edit, :update, :show]

end