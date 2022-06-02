class ReservationsController < ApplicationController
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
end
