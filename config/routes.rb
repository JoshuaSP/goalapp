Rails.application.routes.draw do
  get 'comments/new'

  resources :users, only: [:new, :create, :show] do
    resources :comments, only: :create
  end
  resource :session, only: [:new, :create, :destroy]
  resources :goals do
    resources :comments, only: [:create, :new]
  end
end
