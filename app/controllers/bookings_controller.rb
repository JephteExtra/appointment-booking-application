class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show]
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  private

  def set_booking
    @booking = Booking.find_by(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start, :end, :purpose, :room_id)
  end
end
