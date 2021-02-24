class ShoesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @shoes = Shoe.all
  end

  def show
    @shoe = Shoe.find(params[:id])
  end

  def edit
  end

  def update
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
  end

  private

  def strong_params
    params.require(:shoe).permit(:name, :brand, :size, :price, :location)
  end

end
