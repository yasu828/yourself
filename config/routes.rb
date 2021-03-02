Rails.application.routes.draw do
  devise_for :users
  root to: 'rooms#index'
  
  resources :rooms,  only: [:index, :new, :create] do
    resources :answers
  end
  resources :satisfactions
end
