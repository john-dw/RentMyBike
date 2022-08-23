Rails.application.routes.draw do
  get 'bookings/accept'
  get 'bookings/reject'
  get "dashboard", to: "pages#dashboard"
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :bikes do
    resources :bookings, only: [:new, :create]
  end
end
