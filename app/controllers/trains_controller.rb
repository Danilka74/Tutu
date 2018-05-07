class TrainsController < ApplicationController
  before_action :find_train, only: [:show, :edit, :update, :destroy]
  
  def index
    @trains = Train.all
  end

  def show
  end

  def new
    @train = Train.new
  end

  def create
    @train = Train.create(train_params)

    if @train.save
      redirect_to @train
    else
      render :new
    end 
  end

  def edit
  end

  def update
    if @train.update(train_params)
      redirect_to @train
    else
      render :edit
    end
  end

  def destroy
    @train.destroy
    redirect_to trains_path
  end

  private

  def train_params
    params.require(:train).permit(:number, :current_station_id)
  end

  def find_train
    @train = Train.find(params[:id])
  end
end