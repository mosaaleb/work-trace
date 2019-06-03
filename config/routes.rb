Rails.application.routes.draw do
  devise_for :users
  
  devise_for :users, controller: {
    registerations: 'users/registerations'
  }

 
  root 'pages#index'

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'register', to: 'devise/registrations#new'
  end

  
end
