class ProfilesController < ApplicationController

	def show
		@the_user = User.find(params[:id])
		@created_events = @the_user.events.all
		render 'show'

	end



end
