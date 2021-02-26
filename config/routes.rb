Rails.application.routes.draw do
  devise_for :users
  root to: 'rooms#index'
  
  resources :rooms,  only: [:index, :new, :create] 
  #   resources :answers
  # end
  resources :satisfactions
end
