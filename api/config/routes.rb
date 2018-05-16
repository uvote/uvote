Rails.application.routes.draw do
  resources :events, param: :code, only: [:show]
    # resources :contestants
    # resources :criteria
  resources :votes, only: [:create, :update]
  
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
