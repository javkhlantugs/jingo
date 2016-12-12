Rails.application.routes.draw do

	  devise_for :users, controllers: { sessions: "users/sessions" }


  resources :users, :only => :none do
  	resources :events
  end

  scope '/api' do
    resources :users, only: [:index, :show], controller: 'users_api'

    get '/zipcodes' => 'users_api#zipcodes'
  end

   scope "/api" do
    resources :events, only: [:index, :show, :destroy], controller: "events_api"
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #homepage route
  root "site#index"

  get '/profile/:id', to: 'profiles#show', as: 'profile' 
  
  get '/profile/user/:id', to: 'profiles#user_profile', as: 'user_profile'


end
