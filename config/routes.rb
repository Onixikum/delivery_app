Rails.application.routes.draw do
  root   'couriers#index'

  resources :couriers
end
