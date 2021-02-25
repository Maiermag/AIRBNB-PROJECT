class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @shoes = Shoe.first(6)
  end

  def dashboard
    @user = current_user
  end
end
