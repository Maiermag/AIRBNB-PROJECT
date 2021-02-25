class BookingsController < ApplicationController

  # def new
  #   @shoe = Shoe.find(params[:shoe_id])
  #   @booking = Booking.new
  # end

  def create
    @booking = Booking.new(booking_params)
    @shoe = Shoe.find(params[:shoe_id])
    @booking.shoe = @shoe
    @booking.user = current_user
    if @booking.save
      redirect_to shoe_path(@shoe)
    else
      redirect_to shoe_path(@shoe)
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to shoe_path(@booking.shoe)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
