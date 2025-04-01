Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :posts, only: [:index, :show, :create, :new, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
  get 'homes/about', to: 'homes#about', as: 'about'
  get "/search", to: "searches#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
