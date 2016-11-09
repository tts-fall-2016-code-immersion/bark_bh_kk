Rails.application.routes.draw do
  get 'likes/create'

  get "profiles/:id" => "profiles#show", as: :profile
  get "profiles" => "profiles#index"

  resources :tweets do
    resource :like
  end
  resources :relationships
  root to: "tweets#index"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
