class ReservationsController < ApplicationController
  def index
    render json: Reservation.all.to_json
  end

  def show
    reservation = Reservation.find_by(id: params[:id]).to_json
    render json: reservation
  end
end
