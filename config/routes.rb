Rails.application.routes.draw do
  devise_for :users
  
  get 'monitors/index'
  root to:"monitors#index"
  resources :monitors, only: [:index, :new]
end
