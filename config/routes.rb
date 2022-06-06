Rails.application.routes.draw do
  root 'albums#index'
  resources :albums, only: %i[index]
  resources :players, only: %i[new create]
end
