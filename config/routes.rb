Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'

  get 'dashboard', to: "dashboard#index"

  resources :workshops, shallow: true

end
