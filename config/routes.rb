Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :currencies, only: [:index, :ticker, :highlights] do
        collection do
          get :ticker
          get :highlights
        end
      end
      resources :exchange_rates, only: [:index]
    end
  end
end
