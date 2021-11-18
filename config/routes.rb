Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root is a get '/'
  root "static#taco"
  # get '/', to:"static#home"
  resources :cars
  # resources :subs
  # get "/subs", to: "subs#index"

  # # this need to come first because it more specifin than subs/:id
  # get "/subs/new", to: "subs#new"
  # get "/subs/:id", to: "subs#show"
  # post "/subs", to: "subs#create"

  # get "/subs/:id/edit", to: "subs#edit"

  # put "/subs/:id", to: "subs#update"
  # patch "/subs/:id", to: "subs#update"

  # delete "subs/:id", to: "subs#destroy"

  # creates our subs routes
  # and our nested topics routes
  resources :subs do
    resources :topics
  end

  resources :topics do
    resources :comments
  end

  # CRUD FOR TOPICS ar going to be given a sub_id
  # all topics for a given sub
  # get "/subs/:sub_id/topics", to: "topics#index"
  # get "/subs/:sub_id/topics/:id", to: "topics#show"
end
