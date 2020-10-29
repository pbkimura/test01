Rails.application.routes.draw do
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
   get "users/index" => "users#index"
   get "users/:id" => "users#show"
end
