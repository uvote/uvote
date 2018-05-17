Rails.application.routes.draw do
  resources :events, param: :code, only: [:show]
    # resources :contestants
    # resources :criteria
  post '/votes', to: 'votes#create'
  put '/votes', to: 'votes#update'
  patch '/votes', to: 'votes#update'
  
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
