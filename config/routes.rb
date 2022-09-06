Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to:"homes#top"
  resources :post_images, only: [:new, :create, :index, :show]

  get 'homes/about' , as:'about'
end
