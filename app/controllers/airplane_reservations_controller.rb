class AirplaneReservationsController < ApplicationController
  before_action :set_airplane_reservation, only: %i[ show update destroy ]

  # GET /airplane_reservations
  def index
    @airplane_reservations = AirplaneReservation.all

    render json: @airplane_reservations
  end

  # GET /airplane_reservations/1
  def show
    render json: @airplane_reservation
  end

  # POST /airplane_reservations
  def create
    @airplane_reservation = AirplaneReservation.new(airplane_reservation_params)

    if @airplane_reservation.save
      render json: @airplane_reservation, status: :created, location: @airplane_reservation
    else
      render json: @airplane_reservation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /airplane_reservations/1
  def update
    if @airplane_reservation.update(airplane_reservation_params)
      render json: @airplane_reservation
    else
      render json: @airplane_reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /airplane_reservations/1
  def destroy
    @airplane_reservation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airplane_reservation
      @airplane_reservation = AirplaneReservation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def airplane_reservation_params
      params.require(:airplane_reservation).permit(:start_date, :end_date, :location, :destination, :total_price, :user_id, :airplane_id)
    end
end
