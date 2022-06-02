class V1::HousesController < ApplicationController
  def index
    houses = House.all
    render json: houses
  end

  def show
    render json: House.find(params[:id])
  end

  def create
    @house = House.create(house_params)

    if @house.save
      render json: { status: 200, message: 'new house created successfully' }
    else
      render json: { status: 400, message: 'can not be created!' }
    end
  end

  def update; end

  def destroy; end

  private
  def house_params
    params.require(:house).permit(:address, :city, :zip_code, :image, :bathrooms, :rooms, :surroundings, :price, :construction_year)
  end
end
