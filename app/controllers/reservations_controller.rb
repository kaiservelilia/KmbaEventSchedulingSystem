class ReservationsController < ApplicationController
	def index
		@reservations = Reservation.all
	end

	def show
		@reservation = Reservation.find(params[:id])
	end

	def new
		@reservation = Reservation.new
		@action = "new"
	end

	def create
		@reservation = Reservation.new(reservation_params)

		if @reservation.save
			redirect_to @reservation, notice: 'Reservation was successfully created.'
		else
			render :new
		end
	end

	def edit
		@reservation = Reservation.find(params[:id])
		@action = "edit"
	end

	def update
		@reservation = Reservation.find(params[:id])
		if @reservation.update(reservation_params)
			redirect_to @reservation, notice: 'Reservation was successfully updated.'
		else
			render :edit
		end
	end

	def destroy
		@reservation = Reservation.find(params[:id])
	    @reservation.destroy!
	    redirect_to reservations_path, notice: 'Reservation was successfully deleted.'
	end

	private

	def reservation_params
		params.require(:reservation).permit(:name, :date, :description, :venue_id)
	end
end
