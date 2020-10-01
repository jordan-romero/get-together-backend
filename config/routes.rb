Rails.application.routes.draw do
  resources :events, only: [:create, :update, :destroy, :index]
  resources :occasions, only: [:create, :update, :destroy, :index] do
    resources :events, only: [:create]
  end 
  resources :categories, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
