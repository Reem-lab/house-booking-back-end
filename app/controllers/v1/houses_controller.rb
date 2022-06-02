class V1::HousesController < ApplicationController
  def index
    houses = House.all
    render json: houses
  end

  def show
    render json: House.find(params[:id])
  end

  def create; end

  def update; end

  def destroy; end
end
