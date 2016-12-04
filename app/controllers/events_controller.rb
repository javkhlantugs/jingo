class EventsController < ApplicationController

	def new
		@today=Date.today + 1.day
		@a_user = current_user
		@newevent = @a_user.events.new
		render :new
	end

	def create
		@user = User.find(params[:user_id])
		@new = @user.events.new(
			title: params[:event][:title],
			description: params[:event][:description],
			date: params[:event][:date_date],
			date: params[:event][:date_time],
			street: params[:event][:street],
			city: params[:event][:city],
			state: params[:event][:state],
			zipcode: params[:event][:zipcode])
		@new.save!
		redirect_to root_path
	end


end
