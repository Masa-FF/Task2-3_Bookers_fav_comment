Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :create, :edit, :update]
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  
  root 'homes#top'
  get 'home/about' => 'homes#about'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end