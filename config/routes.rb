Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # GET /api/v1/users/:id
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :index]
    end
  end

  #GET /api/v1/trash_categories/:id
  namespace :api do
    namespace :v1 do
      resources :trash_categories, only: [:show, :index]
    end
  end
    #GET /api/v1/trash_items/:id
    namespace :api do
      namespace :v1 do
        resources :trash_items, only: [:show, :index]
      end
    end
end
