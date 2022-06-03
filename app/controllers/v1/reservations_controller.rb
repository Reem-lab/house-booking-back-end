class V1::ReservationsController < ApplicationController
  def index
    render json: Reservation.all.to_json
  end

  def show
    reservation = Reservation.find_by(id: params[:id])
    if reservation.nil?
      render status: 404, json: { error: 'Reservation not found' }.to_json
    else
      render json: reservation.to_json
    end
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: @reservation.to_json, status: 201
    else
      render status: 500, json: { error: 'Reservation could not be created' }.to_json
    end
  end

  def destroy
    @reservation = Reservation.find_by(id: params[:id])

    if @reservation.nil?
      render status: 404, json: { error: 'Reservation not found' }.to_json
      return
    end

    @reservation.destroy

    if @reservation.destroyed?
      render status: 200, json: { message: 'Reservation destroyed' }.to_json
    else
      render status: 500, json: { error: 'Reservation could not be destroyed' }.to_json
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :user_id, :house_id)
  end
end
