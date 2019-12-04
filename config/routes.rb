Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'search', to: 'projects#search', as: :search
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :projects, except: %i[edit update destroy] do
    resources :contracts, only: %i[new create]
  end
  resources :contracts, only: %i[index show]
  resources :favorites, only: %i[destroy create]

  get 'contracts/:id/send_facturation', to: 'contracts#send_facturation', as: :send_facturation

end
