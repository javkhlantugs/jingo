Rails.application.routes.draw do

	  devise_for :users, controllers: { sessions: "users/sessions" }


  resources :users, :only => :none do
  	resources :events
  end

   scope "/api" do
    resources :events, controller: "events_api"
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #homepage route
  root "site#index"

  get '/profile/:id', to: 'profiles#show', as: 'profile' 
  


end
