class TourbasesController < ApplicationController

  def index
    @tours = Tourbase.all
  end

  def new
    @new_tour = Tourbase.new()
  end


  def create
    @new_tour = Tourbase.new(tour_params)
    @new_tour.save
    redirect_to action: :index

  end


  private def tour_params
    params.require(:tourbase).permit(:tourbase_name, :city_id)
  end




end
