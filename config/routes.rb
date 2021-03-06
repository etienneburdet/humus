Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'search', to: 'projects#search', as: :search

  resources :projects, except: %i[edit update destroy] do
    resources :contracts, only: %i[new create]
  end
  resources :contracts, only: %i[index show]
  resources :favorites, only: %i[index destroy create]
  get 'contracts/:id/send_facturation', to: 'contracts#send_facturation', as: :send_facturation
end
