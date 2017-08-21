Rails.application.routes.draw do
  get 'pages/terms' => 'pages#terms'

  get 'pages/about' => 'pages#about'

  get 'home/index'
  get 'contacts' => 'contacts#new'

  resources :articles do
     resources :comments 
  end  
  resource :contacts, only: [:new,:create]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
