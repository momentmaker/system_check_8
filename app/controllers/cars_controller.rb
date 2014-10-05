class CarsController < ApplicationController
  def index
    @cars = Car.all.order(created_at: :desc)
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      flash[:notice] = "Car submitted"
      redirect_to cars_path
    else
      flash[:notice] = "Invalid entry"
      render :new
    end
  end

  private

  def car_params
    params.require(:car).permit(:manufacturer_id, :color, :year, :mileage, :description)
  end
end
