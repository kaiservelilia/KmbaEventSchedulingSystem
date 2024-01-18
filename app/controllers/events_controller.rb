class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new
		@action = "new"
	end

	def create
		@event = Event.new(event_params)

		if @event.save
			redirect_to @event, notice: 'Event was successfully created.'
		else
			render :new
		end
	end

	def edit
		@event = Event.find(params[:id])
		@action = "edit"
	end

	def update
		@event = Event.find(params[:id])
		if @event.update(event_params)
			redirect_to @event, notice: 'Event was successfully updated.'
		else
			render :edit
		end
	end

	def destroy
		@event = Event.find(params[:id])
	    @event.destroy!
	    redirect_to events_path, notice: 'Event was successfully deleted.'
	end

	def event_venue
		@event_venue = Venue.all
	end

	private

	def event_params
		params.require(:event).permit(:name, :date, :description, :venue_id, :time_in, :time_out, :no_of_attendies, :set_up_type, :available_resources, :email, :contact_number, :contact_person, :payment_type)
	end
	
end
