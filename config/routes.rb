Rails.application.routes.draw do
  root 'pages#home'

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :photos
  resources :tours do
    resources :reviews, only: [:create, :destroy]
    resources :markers, only: [:create, :destroy]
  end
  resources :conversations do
    resources :messages
  end
  
  post 'tip', to: 'checkout#create'
  post '/rate' => 'rater#create', :as => 'rate'

  get 'stripe/connect'
  get 'tags/:tag', to: 'tours#index', as: :tag
  get 'profile/:user', to: 'profile#show', as: :profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
