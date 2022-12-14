Rails.application.routes.draw do
  get 'bookings/:id/accept', to: "bookings#accept", as: :accept
  get 'bookings/:id/reject', to: "bookings#reject", as: :reject
  get "dashboard", to: "pages#dashboard"
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :bikes do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, except: [:new, :create] do
    resources :reviews, only: [:new, :create, :show]
  end
  resources :reviews, only: [:destroy]
end
