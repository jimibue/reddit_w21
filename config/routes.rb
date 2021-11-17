Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root is a get '/'
  root "static#taco"
  # get '/', to:"static#home"
  resources :cars
  # resources :subs
  get "/subs", to: "subs#index"
end
