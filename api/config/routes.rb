Rails.application.routes.draw do
  resources :events, only: [:show] do
    # resources :contestants
    # resources :criteria
    resources :votes, only: [:create, :update]
  end
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
