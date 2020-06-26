Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'
  get 'home/about',  to: 'homes#about', as: 'home_about'
  resources :books,only: [:create, :show, :index]
end
