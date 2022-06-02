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

  def update
    @house = House.find(params[:id])
    if @house.update(house_params)
      render json: @house, status: 200, message: 'house updated successfully'
    else
      render json: @house.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    render json: { status: 200, message: 'Record deleted successfully' }
  end

  private

  def house_params
    params.require(:house).permit(:user_id, :address, :city, :zip_code, :image, :bathrooms, :rooms, :surroundings,
                                  :price, :construction_year)
  end
end
