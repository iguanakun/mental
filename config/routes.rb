Rails.application.routes.draw do
  devise_for :users
  
  root to:"monitorings#index"
  resources :monitorings, only: [:index, :new, :create, :show] do
    collection do
      get 'lists'
    end
  end
end
