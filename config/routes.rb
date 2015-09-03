Rails.application.routes.draw do
  devise_for :users
  resources :beams do 
    resources :comments
  end
  root 'beams#index'
end
