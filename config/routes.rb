Rails.application.routes.draw do
  get 'post/new'
  get 'post/edit'
  get 'spot/index'
  get "spot/show/:id" => "spot#show"
  get "spot/edit/:id" => "spot#edit"
  get 'spot/new'
  get "spot/destroy/:id" => "spot#destroy"
  post "spot/create"
  post "spot/update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
