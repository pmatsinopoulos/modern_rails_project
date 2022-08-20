Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'contact_us/new'
  get 'messages', to: 'contat_us#index', as: :messages
  post 'messages', to: 'contact_us#create'

  # Defines the root path route ("/")
  root "welcome#index"
end
