class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def new
    @city = City.new()
  end

  def create
    @city = City.new(city_params)

    if @city.save
      redirect_to action: :index
    else
      redirect_to new_city_path
    end

  end

  def edit
    @city = City.find params[:id]
  end

  def update
    @city = City.find params[:id]
    if @city.update(city_params)
      redirect_to cities_path
    else
      redirect_to edit_city_path
    end
  end

  def destroy
    @city = City.find params[:id]
    if !noTourbases
      @city.destroy
      redirect_to action: :index
    end
  end

  def noTourbases
    return Tourbase.find_by_city_id(@city.city_id).present?
  end

  private def city_params
    params.require(:city).permit(:city_name, :region_id)
  end

end

