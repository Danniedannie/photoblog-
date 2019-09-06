Rails.application.routes.draw do
  devise_for :users
  resources :posts
root to: "posts#index"
get 'about', to: 'posts#about'
get 'contact', to: 'posts#contact'
end
