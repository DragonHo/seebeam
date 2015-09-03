Rails.application.routes.draw do
  devise_for :users
  resources :beams do
    member do
      get "like", to: "beams#upvote"
      get "dislike", to: "beams#downvote"
    end
    resources :comments
  end
  root 'beams#index'
end
