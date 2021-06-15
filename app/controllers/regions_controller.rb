class RegionsController < ApplicationController

  def edit
    @region = Region.find params[:id]
  end

  def update
    @region = Region.find params[:id]
    if @region.update(region_params)
      redirect_to regions_path
    else
      render edit_region_path
    end
  end

  def destroy
    @region = Region.find params[:id]

    if noCities
      @region.destroy
      redirect_to action: :index
    end
  end

  def noCities
    return !City.find_by_region_id(@region.region_id).present?
  end


  def index
    @regions = Region.all
  end

  def new
    @region = Region.new()
  end

  def create
    @region = Region.new(region_params)
    if @region.save
      redirect_to action: :index
    else
      redirect_to new_region_path
    end
  end


  private def region_params
    params.require(:region).permit(:region_name, :country_id)
  end
end
