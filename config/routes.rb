Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :projects, except: %i[edit update destroy] do
    resources :contracts, only: %i[new create]
  end
  resources :contracts, except: %i[new create destroy]
end
