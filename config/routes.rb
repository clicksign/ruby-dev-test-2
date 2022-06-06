Rails.application.routes.draw do
  resources :albums, only: %i[index]
end
