class V1::ReservationsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: {
      status: { code: 200, message: 'Reservations were fetched sucessfully.' },
      data: Reservation.all
    }
  end

  def show
    reservation = Reservation.find_by(id: params[:id])
    if reservation.nil?
      render json: {
        status: { code: 404, message: 'Reservation not found.' }
      }
    else
      render json: {
        status: { code: 200, message: 'The reservation was fetched sucessfully.' },
        data: reservation
      }
    end
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: {
        status: { code: 200, message: 'Reservation created sucessfully.' },
        data: @reservation
      }
    else
      render json: {
        status: { code: 404, message: 'The reservation could not be created!' }
      }
    end
  end

  def update
    @reservation = Reservation.find_by(id: params[:id])

    if @reservation.nil?
      render json: {
        status: { code: 404, message: 'Reservation not found.' }
      }
    elsif @reservation.update(reservation_params)
      render json: {
        status: { code: 200, message: 'Reservation updated successfully' },
        data: @reservation
      }
    else
      render json: {
        status: { code: 500, message: 'Bad request, Reservation could not be updated' }
      }
    end
  end

  def destroy
    @reservation = Reservation.find_by(id: params[:id])

    if @reservation.nil?
      render json: {
        status: { code: 404, message: 'Reservation not found.' }
      }
      return
    end

    @reservation.destroy

    if @reservation.destroyed?
      render json: {
        status: { code: 200, message: 'Reservation was deleted successfully' }
      }
    else
      render json: {
        status: { code: 500, message: 'Bad request, Reservation could not be deleted' }
      }
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :user_id, :house_id)
  end
end
