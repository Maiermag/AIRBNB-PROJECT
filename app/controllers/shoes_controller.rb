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
  end

  def create
  end

  def destroy
  end
end
