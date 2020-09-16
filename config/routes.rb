Rails.application.routes.draw do
  get "users/index" => "users#index"
  get "/" => "posts#index"
  post "posts/create" => "posts#create"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#view"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
