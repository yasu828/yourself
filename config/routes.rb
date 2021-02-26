Rails.application.routes.draw do
  devise_for :users
  root to: 'answers#index'
  
  resources :rooms,  only: [:new] do
    resources :answers
  end
  resources :satisfactions
end
