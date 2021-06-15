class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end

  def new
    @country = Country.new()
  end

  def create
    @country = Country.new(country_params)

    if @country.save
      redirect_to action: :index
    else
      redirect_to new_country_path
    end
  end

  def edit
    @country = Country.find params[:id]
  end


  def update
    @country = Country.find params[:id]
    if @country.update(country_params)
      redirect_to countries_path
    else
      render edit_country_path
    end
  end

  def destroy
    @country = Country.find params[:id]
    if noRegions
      @country.destroy
      redirect_to countries_path
    end
  end

  def noRegions
    return !Region.find_by_country_id(@country.country_id).present?
  end

  private def country_params
    params.require(:country).permit(:country_name)
  end

end
