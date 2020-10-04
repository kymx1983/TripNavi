class SpotController < ApplicationController
  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find_by(id:params[:id])
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new
    @spot.title = params[:title]
    @spot.content = params[:content]
    @spot.spot_address = params[:spot_address]

    if @spot.save
      redirect_to('/spot/index')
    else
      render("spot/new")
    end
  end

  def edit
    @spot = Spot.find_by(id:params[:id])
  end
end
