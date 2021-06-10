class RegionsController < ApplicationController

  def index
    @regions = Regions.all
  end

end
