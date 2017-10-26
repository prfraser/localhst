Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  resources :tours do
    resources :reviews, only: [:create, :destroy]
  end
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'pages#home'
  get 'tags/:tag', to: 'tours#index', as: :tag
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
