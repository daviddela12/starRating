Rails.application.routes.draw do
  post 'reviews/create'
  get 'products/index'
  get 'products/show'
  namespace :admin do
    resources :products
  end
  root 'product#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
