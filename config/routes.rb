RailsBlog::Application.routes.draw do

  resources :comments, only: :create
  resources :users
  resources :tags
  resources :posts

end
