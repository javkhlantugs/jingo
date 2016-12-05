class EventsApiController < ApplicationController
	protect_from_forgery with: :null_session
	def destroy
		an_event = Event.find(params[:id])
		an_event.destroy
		render json: an_event
	end

	def index
		events = Event.all
		render json: events
	end
end
