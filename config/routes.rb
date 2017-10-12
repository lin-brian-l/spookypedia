Rails.application.routes.draw do
  resources :users, except: [:destroy] do
    resources :admins, only: [:index, :new, :create, :destroy]
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :categories
  resources :articles do
    resources :comments, except: [:index]
  end

  root 'categories#index'
end
