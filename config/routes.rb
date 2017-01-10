Rails.application.routes.draw do
  resources :apartments do
    get 'map_location'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'apartments#index'
end
