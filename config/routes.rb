Rails.application.routes.draw do

	  devise_for :users


  resources :users, :only => :none do
  	resources :events
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #homepage route
  root "site#index"

  get '/profile/:id', to: 'profiles#show', as: 'profile' 
  


end
