class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def new
    @new_city = City.new()
  end

  def create
    @new_city = City.new(city_params)
    @new_city.save
    redirect_to action: :index

  end


  private def city_params
    params.require(:city).permit(:city_name, :region_id)
  end

end

