class ProfilesController < ApplicationController

	def show
		@the_user = User.find(params[:id])
		render 'show'

	end



end
