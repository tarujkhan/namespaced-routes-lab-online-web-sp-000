Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:index, :show, :new]
  end 

  resources :songs
  namespace :admin do
    resources :preferences, only: [:index, :show, :new]
  end
  resources :songs

end
