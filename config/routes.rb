Rails.application.routes.draw do

  resources :games, only: [:index, :show, :create, :update]
  resources :scores, only: [:index, :show, :create, :udpate]
  resources :players, only: [:index, :show, :create, :update]

end
