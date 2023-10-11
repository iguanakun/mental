Rails.application.routes.draw do
  get 'monitors/index'
  root to:"monitors#index"

end
