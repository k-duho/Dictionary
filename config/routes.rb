Rails.application.routes.draw do
  root to: "users#new"
  post "/login", to: "users#login"
  resources :users, only: [:new]
  
  resources :dashboards, only: [:index]
  

  namespace :api do
    namespace :v1 do
      namespace :github do
        resources :users, only: [:show] do
          resources :commits, only: [:index]
        end
      end
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
