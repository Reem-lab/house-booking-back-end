class V1::HousesController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: {
      status: { code: 200, message: 'Houses were fetched sucessfully.' },
      data: House.all
    }
  end

  def show
    house = House.find_by(id: params[:id])
    if house.nil?
      render json: {
        status: { code: 404, message: 'House not found.' }
      }
    else
      render json: {
        status: { code: 200, message: 'The House was fetched sucessfully.' },
        data: house
      }
    end
  end

  def create
    @house = House.create(house_params)

    if @house.save
      render json: {
        status: { code: 200, message: 'House created sucessfully.' },
        data: @house
      }
    else
      render json: {
        status: { code: 404, message: 'The House can not be created!' }
      }
    end
  end

  def update
    @house = House.find(params[:id])

    if @house.nil?
      render json: {
        status: { code: 404, message: 'The House not found' }
      }
      return
    end

    if @house.update(house_params)
      render json: {
        status: { code: 200, message: 'House updated successfully' },
        data: @house
      }
    else
      render json: {
        status: { code: 500, message: 'Bad request, House can not be updated' }
      }
    end
  end

  def destroy
    @house = House.find(params[:id])

    if @house.nil?
      render json: {
        status: { code: 404, message: 'House not found' }
      }
      return
    end
    @house.destroy
    render json: {
      status: { code: 200, message: 'House was deleted successfully' }
    }
  end

  private

  def house_params
    params.require(:house).permit(:user_id, :address, :city, :zip_code, :image, :bathrooms, :rooms, :surroundings,
                                  :price, :construction_year)
  end
end
