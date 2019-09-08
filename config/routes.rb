Rails.application.routes.draw do
  resources :posts
root to: "posts#index"
get 'about', to: 'posts#about'
get 'contact', to: 'posts#contact'
end
