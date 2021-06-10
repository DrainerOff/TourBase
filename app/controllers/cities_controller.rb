class CitiesController < ApplicationController

  def index
    @cities = Cities.all
  end


end

