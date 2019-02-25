Rails.application.routes.draw do
  resources :ingredients, only: [:index, :create]
  resources :smoothies, only: [:index, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
