Rails.application.routes.draw do
  devise_for :users
  root to: 'rooms#index'
  
  resources :rooms,  only: [:index, :new, :create] do
    resources :answers
    resources :right_answers
    
  end
  resources :satisfactions
end
