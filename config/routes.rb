Rails.application.routes.draw do
  post "/users" => "users#create"

  ### create session - LOGIN
  post "/sessions" => "sessions#create" 
end
