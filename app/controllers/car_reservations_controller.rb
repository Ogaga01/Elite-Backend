class CarReservationsController < ApplicationController
  before_action :set_car_reservation, only: %i[ show update destroy ]

  # GET /car_reservations
  def index
    @car_reservations = CarReservation.all

    render json: @car_reservations
  end

  # GET /car_reservations/1
  def show
    render json: @car_reservation
  end

  # POST /car_reservations
  def create
    @car_reservation = CarReservation.new(car_reservation_params)

    if @car_reservation.save
      render json: @car_reservation, status: :created, location: @car_reservation
    else
      render json: @car_reservation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /car_reservations/1
  def update
    if @car_reservation.update(car_reservation_params)
      render json: @car_reservation
    else
      render json: @car_reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /car_reservations/1
  def destroy
    @car_reservation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_reservation
      @car_reservation = CarReservation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_reservation_params
      params.require(:car_reservation).permit(:start_date, :end_date, :location, :total_price)
    end
end
