Rails.application.routes.draw do

  devise_for :utilisateurs
root to:'static_pages#home'
resources :gossips
resources :comments
end
