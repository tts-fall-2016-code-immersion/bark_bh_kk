Rails.application.routes.draw do
  get 'tweets/index'

  get 'tweets/new'

  get 'tweets/edit'

  get 'tweets/show'

  get 'tweets/_form'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "home#index"
end
