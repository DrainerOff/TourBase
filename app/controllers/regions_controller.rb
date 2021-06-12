class RegionsController < ApplicationController

  def index
    @regions = Region.all
  end

  def new
    @new_region = Region.new()
  end

  def create
    @new_region = Region.new(region_params)
    @new_region.save
    redirect_to action: :index

  end


  private def region_params
    params.require(:region).permit(:region_name, :country_id)
  end
end
