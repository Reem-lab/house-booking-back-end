class V1::HousesController < ApplicationController
  def index
    houses = House.all
    render json: houses, only: [:address]
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

end
