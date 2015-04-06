Rails.application.routes.draw do
  #resources :games
  resources :games, only: [:index, :show, :create, :update]
  resources :scores, only: [:index, :show, :create, :udpate]
  resources :players, defaults: { format: :json }, only: [:index, :show, :create, :update] do
    post 'sign_in', on: :collection
  end

end
