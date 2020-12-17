Rails.application.routes.draw do
  devise_for :users
  root to: 'comics#index'
  resources :comics, only: [:index, :new, :create, :show] do
    resources :rooms, only: [:index, :new, :create, :show] do
      resources :messages, only:[:index, :new, :create]
    end
  end
end
