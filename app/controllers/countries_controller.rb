class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end
  def new
    @new_country = Country.new()
  end

  def create
    @new_country = Country.new(country_params)
    @new_country.save
    redirect_to action: :index

  end


  private def country_params
    params.require(:country).permit(:country_name)
  end

end
