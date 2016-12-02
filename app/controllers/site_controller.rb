class SiteController < ApplicationController


	#home page controller
	def index
		if user_signed_in?
			render :profile
		else 
			render :index
		end
	end


end
