Rails.application.routes.draw do
  devise_for :users
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'

  resources :houses do
    resources :bookings, only: [:new, :create, :edit, :show]
  end

  resources :bookings, only: [:index]

  root to: 'pages#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
