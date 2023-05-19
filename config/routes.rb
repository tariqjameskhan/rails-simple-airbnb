Rails.application.routes.draw do
  # get 'flats/index'
  # get 'flats/show'
  # get 'flats/new'
  # get 'flats/create'
  # get 'flats/edit'
  # get 'flats/update'
  # get 'flats/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :flats
end
