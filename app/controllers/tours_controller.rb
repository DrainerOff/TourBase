class ToursController < ApplicationController

  def index

  end


  def new

  end


  def show
    @tours= tours.find(params[:id])
  end

  def create
    @tours = tours.new(tours_params)

    @tours.save
    redirect_to@tours
  end


  private
  def tours_params
    params.require(:post).permit(:title, :body)
  end


end
