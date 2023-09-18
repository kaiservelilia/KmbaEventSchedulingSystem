class VenuesController < ApplicationController
	def index
		@venues = Venue.all
	end

	def show
	end

	def new
		@venue = Venue.new
		@action = "new"
	end

	def create
		@venue = Venue.new(venue_params)

		if @venue.save
			redirect_to @venue, notice: 'Room was successfully created.'
		else
			render :new
		end
	end

	def edit
		@venue = Venue.find(params[:id])
		@action = "new"
	end

	def update
		if @venue.update(event_params)
			redirect_to @venue, notice: 'Room was successfully updated.'
		else
			render :edit
		end
	end

	def destroy
		@venue.destroy
		redirect_to venues_url, notice: 'Room was successfully destroyed.'
	end

	private
	
	def set_venue
		@venue = Venue.find(params[:id])
	end

	def venue_params
		params.require(:venue).permit(:name, :address)
	end
end
