Rails.application.routes.draw do
  get 'goal_comments/new'

  resources :users, only: [:new, :create, :show] do
    resources :user_comments, only: [:create]
  end

  resource :session, only: [:new, :create, :destroy]
  resources :goals do
    resources :goal_comments, only: [:new, :create]
  end
end
