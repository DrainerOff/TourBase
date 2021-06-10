class ToursController < ApplicationController

  def index
    @tours = Tourbases.all
  end


  def new

  end





end
