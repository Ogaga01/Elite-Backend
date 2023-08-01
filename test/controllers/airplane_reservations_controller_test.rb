require "test_helper"

class AirplaneReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @airplane_reservation = airplane_reservations(:one)
  end

  test "should get index" do
    get airplane_reservations_url, as: :json
    assert_response :success
  end

  test "should create airplane_reservation" do
    assert_difference("AirplaneReservation.count") do
      post airplane_reservations_url, params: { airplane_reservation: { destination: @airplane_reservation.destination, end_date: @airplane_reservation.end_date, location: @airplane_reservation.location, start_date: @airplane_reservation.start_date, total_price: @airplane_reservation.total_price } }, as: :json
    end

    assert_response :created
  end

  test "should show airplane_reservation" do
    get airplane_reservation_url(@airplane_reservation), as: :json
    assert_response :success
  end

  test "should update airplane_reservation" do
    patch airplane_reservation_url(@airplane_reservation), params: { airplane_reservation: { destination: @airplane_reservation.destination, end_date: @airplane_reservation.end_date, location: @airplane_reservation.location, start_date: @airplane_reservation.start_date, total_price: @airplane_reservation.total_price } }, as: :json
    assert_response :success
  end

  test "should destroy airplane_reservation" do
    assert_difference("AirplaneReservation.count", -1) do
      delete airplane_reservation_url(@airplane_reservation), as: :json
    end

    assert_response :no_content
  end
end
