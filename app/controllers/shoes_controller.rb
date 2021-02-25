class ShoesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @shoes = Shoe.all
  end

  def show
    @shoe = Shoe.find(params[:id])
    @booking = Booking.new
  end

  def edit
    @shoe = Shoe.find(params[:id])
    # redirect_to shoe_path(@shoe), notice: 'updated'
  end

  def update
    @shoe = Shoe.find(params[:id])
    @shoe.update(strong_params)
    redirect_to shoe_path(@shoe)
  end

  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.new(strong_params)
    @shoe.user = current_user
    if @shoe.save
      redirect_to shoe_path(@shoe), notice: 'new shoe created'
    else
      render :new
    end
  end

  def destroy
    @shoe = Shoe.find(params[:id])
    @shoe.destroy
    redirect_to shoes_path, notice: 'shoe deleted'
  end

  private

  def strong_params
    params.require(:shoe).permit(:name, :brand, :size, :price, :location, :year, :photo)
  end

end
