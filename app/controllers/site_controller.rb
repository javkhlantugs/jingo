class SiteController < ApplicationController


	#home page controller
	def index
		if user_signed_in?
			@all_events = Event.all
			@user = current_user
			render :home
		else 
			render :index
		end
	end


end
