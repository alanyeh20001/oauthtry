Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :products
    end
  end

  namespace :identities do
    resource :home
  end

  use_doorkeeper
  root "identities/home#index"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
