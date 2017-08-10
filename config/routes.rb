Rails.application.routes.draw do
  resources :articles
  resource :contacts, only: [:new,:create]
  get 'home/index'
  get 'contacts' => 'contacts#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
