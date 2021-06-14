class TourbasesController < ApplicationController

  def index
    @tours = Tourbase.all
  end

  def new
    @tour = Tourbase.new
  end

  def edit
    @tour = Tourbase.find params[:id]
  end

  def create
    @tour = Tourbase.new(tour_params)
    if @tour.save
      redirect_to action: :index
    else
      redirect_to new_tourbasis_path
    end
  end

  def update
    @tour = Tourbase.find params[:id]
    if @tour.update(tour_params)
      redirect_to tourbases_path
    else
      redirect_to edit_tourbases_path
    end
  end

  def destroy
    @tour = Tourbase.find params[:id]
    @tour.destroy
    redirect_to tourbases_path
  end

  private def tour_params
    params.require(:tourbase).permit(:tourbase_name, :city_id)
  end


end
