Rails.application.routes.draw do
  post "/users" => "users#create"
  get "/users" => "users#index"
  

  ### create session - LOGIN
  post "/sessions" => "sessions#create" 
end
