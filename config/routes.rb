Rails.application.routes.draw do
  devise_for :users
  get 'profile/index'
  root to: "profile#index"
  resources :comments
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'posts/index'

root "posts#index"
end
