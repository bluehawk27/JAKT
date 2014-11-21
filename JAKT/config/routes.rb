Rails.application.routes.draw do
  root :to => 'sessions#new'

  resources :users
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"

end
