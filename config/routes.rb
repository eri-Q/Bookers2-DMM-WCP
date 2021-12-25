Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get "home/about" => "homes#about"
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :index, :edit, :update]
  post 'books' => 'books#create'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
end
