class ShoesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      if params[:query][:brand].present? && params[:query][:size].present?
        @shoes = Shoe.where(brand: params[:query][:brand]).where(size: params[:query][:size])
      elsif params[:query][:brand].present?
        @shoes = Shoe.where(brand: params[:query][:brand])
      elsif params[:query][:size].present?
        @shoes = Shoe.where(size: params[:query][:size])
      end
    else
      @shoes = policy_scope(Shoe).order(created_at: :desc)
    end
  end

  def show
    @shoe = Shoe.find(params[:id])
    authorize @shoe
    @booking = Booking.new
  end

  def edit
    @shoe = Shoe.find(params[:id])
    authorize @shoe
    # redirect_to shoe_path(@shoe), notice: 'updated'
  end

  def update
    @shoe = Shoe.find(params[:id])
    authorize @shoe
    @shoe.update(strong_params)
    redirect_to shoe_path(@shoe)
  end

  def new
    @shoe = Shoe.new
    authorize @shoe
  end

  def create
    @shoe = Shoe.new(strong_params)
    authorize @shoe
    @shoe.user = current_user
    if @shoe.save
      redirect_to shoe_path(@shoe), notice: 'new shoe created'
    else
      render :new
    end
  end

  def destroy
    @shoe = Shoe.find(params[:id])
    authorize @shoe
    @shoe.destroy
    redirect_to shoes_path, notice: 'shoe deleted'
  end

  private

  def strong_params
    params.require(:shoe).permit(:name, :brand, :size, :price, :location, :year, :photo)
  end

end
