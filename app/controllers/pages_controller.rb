class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @shoes = Shoe.first(6)
  end

  def dashboard
    @shoes = Shoe.where(user: current_user)
    # @bookings = Booking.where(Shoe.where(user: current_user))
  end
end
