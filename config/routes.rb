Rails.application.routes.draw do
  # route to create contact
  resources :contacts, only: [:create]
end
