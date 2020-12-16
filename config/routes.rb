Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # GET /api/v1/users/:id
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :index]
    end
  end
end
