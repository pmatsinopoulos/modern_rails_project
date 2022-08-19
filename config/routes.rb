Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'contact_us/new'

  # Defines the root path route ("/")
  root "welcome#index"
end
