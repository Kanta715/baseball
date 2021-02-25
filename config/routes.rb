Rails.application.routes.draw do
  devise_for :users
  
  get "/firststep", to: "home#first"
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
