class ProfilesController < ApplicationController
	before_action :authenticate_user!
	def show
		@the_user = User.find(params[:id])
		@created_events = @the_user.events.all
		render 'show'

	end

	def user_profile
		@a_user = User.find(params[:id])
		@created_events = @a_user.events.all
		render 'visit'
	end


end
