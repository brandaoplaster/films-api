require 'sidekiq/web'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :movies, only: [:index, :create]
    end
  end
  mount Sidekiq::Web => '/sidekiq'
end
