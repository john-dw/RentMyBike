Rails.application.routes.draw do
  get 'bikes/index'
  get 'bikes/show'
  get 'bikes/new'
  get 'bikes/create'
  get 'bikes/edit'
  get 'bikes/update'
  get 'bikes/destroy'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
