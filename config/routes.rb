Rails.application.routes.draw do
  get :login, to: 'user_sessions#new'
  delete :logout, to: 'user_sessions#destroy'
  
  resources :user_sessions, only: %i[create]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
