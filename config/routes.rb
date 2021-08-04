Rails.application.routes.draw do
  root   'couriers#index'

  resources :couriers, shallow: true do
    resources :packages, only: [:create] do
      get :status_complite
    end
  end
end
