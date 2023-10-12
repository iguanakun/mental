Rails.application.routes.draw do
  devise_for :users
  
  root to:"monitorings#index"
  resources :monitorings, only: [:index, :new, :create] do
    collection do
      get 'lists'
    end
  end
end
