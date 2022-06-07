Rails.application.routes.draw do
  root 'albums#index'
  resources :albums, only: %i[index new create]
  resources :players, only: %i[new create]
end
