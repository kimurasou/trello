Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'

  resources :list, only: [:new, :create, :edit, :update, :destroy] do
    resources :card, except: [:index]
  end
  
  resources :user, only: [:edit, :update] 

  post '/homes/guest_sign_in', to: 'homes#new_guest'
end
