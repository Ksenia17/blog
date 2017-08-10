Rails.application.routes.draw do
  resources :articles
  resource :contacts, only: [:new,:create]
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
