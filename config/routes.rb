Rails.application.routes.draw do
  devise_for :users
  root to: 'rooms#index'
  
  resources :rooms,  only: [:index, :new, :create, :show] do
    resources :answers, only: [:index, :new, :create]
  end
end