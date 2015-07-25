Rails.application.routes.draw do

  root to: "pages#index"
  resources :students
  resources :groups
  resources :teachers

  # resources :users ## when this is live, it gives me errors about uninitialized constants
end
