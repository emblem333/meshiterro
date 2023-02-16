Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  #get 'users/show'
  #get 'users/edit'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
  get 'homes/about' => "homes#about", as: "about"
end
