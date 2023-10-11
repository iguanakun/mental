Rails.application.routes.draw do
  get 'monitors/index'
  root to:"monitors#index"
  resources :monitors, only: [:index, :new]
end
