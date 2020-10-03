class SpotController < ApplicationController
  def index
    @spots = Spot.all
  end

  def show
  end

  def new
  end
end
