Rails.application.routes.draw do
  devise_for :users
  root to: 'answers#index'
  
  resources :answers
end
