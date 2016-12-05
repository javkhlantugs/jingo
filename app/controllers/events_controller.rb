class EventsController < ApplicationController

	def new
		@today=Date.today + 1.day
		@a_user = current_user
		@newevent = @a_user.events.new
		render :new
	end

	def create
		@user = User.find(params[:user_id])
		@new = @user.events.new(event_params)
		@new.save!
		redirect_to root_path
	end

	def event_params
		params.require(:event).permit(:title, :description, :date, :street, :city, :state, :zipcode, :avatar, :sponsored)
	end

end
