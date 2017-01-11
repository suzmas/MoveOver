Rails.application.routes.draw do
  devise_for :users
  resources :apartments do
    get 'map_location'
    get :map_locations, on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'apartments#index'
end
