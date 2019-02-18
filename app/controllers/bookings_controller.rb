class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]
  def index
    # @space = Space.find(params[:space_id])
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def new
    @space = Space.find(params[:space_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @space = Space.find(params[:space_id])
    @booking.space = @space
    authorize @booking
    if @booking.save
      redirect_to space_booking_path(@space.id, @booking.id)
    else
      render :new
    end
  end

  def show
    @space = Space.find(params[:space_id])
    authorize @booking
    @markers = [@space].map do |space|
      {
        lng: space.longitude,
        lat: space.latitude
      }
    end
  end

 private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end
end
