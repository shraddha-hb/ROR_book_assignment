Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  scope module: 'api' do
    namespace :v1 do
    resources :authors
    resources :books, only: [:index, :show]
    resources :search do 
      get 'search', on: :collection
    end
    resources :books do
	  	resources :reviews
	  end
    end
  end
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
