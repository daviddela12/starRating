Rails.application.routes.draw do
  get 'product/index'
  get 'product/show'
  namespace :admin do
    resources :products
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
