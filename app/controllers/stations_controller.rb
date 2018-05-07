class StationsController < ApplicationController
  
  def index
    @stations = Station.all
  end

  def show
    @station = Station.find(params[:id])
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.create(station_params)

    if @station.save
      redirect_to @station
    else
      render :new
    end    
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])

    @station.update(station_params)
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    redirect_to station_path
  end

  private

  def station_params
    params.require(:station).permit(:title)
  end
end
