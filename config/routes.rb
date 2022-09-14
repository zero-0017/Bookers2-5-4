Rails.application.routes.draw do
  devise_for :users

  root to: "homes#top"
  get "home/about"=>"homes#about"
  get "search" => "searchs#search"

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]
  resources :users, only: [:index,:show,:edit,:update]
end