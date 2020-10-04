Rails.application.routes.draw do
  get 'spot/index'
  get "spot/show/:id" => "spot#show"
  get "spot/edit/:id" => "spot#edit"
  get 'spot/new'
  post "spot/create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
