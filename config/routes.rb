Rails.application.routes.draw do
  get 'post/new'
  get 'post/edit'
  get 'spot/index'
  get "spot/show/:id" => "spot#show"
  get "spot/edit/:id" => "spot#edit"
  get 'spot/new'
  get "spot/destroy/:id" => "spot#destroy"
  get "post/show/:id" => "post#show"
  post "spot/create"
  post "spot/update"
  post "post/create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
