require "test_helper"

class CarReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_reservation = car_reservations(:one)
  end

  test "should get index" do
    get car_reservations_url, as: :json
    assert_response :success
  end

  test "should create car_reservation" do
    assert_difference("CarReservation.count") do
      post car_reservations_url, params: { car_reservation: { end_date: @car_reservation.end_date, location: @car_reservation.location, start_date: @car_reservation.start_date, total_price: @car_reservation.total_price } }, as: :json
    end

    assert_response :created
  end

  test "should show car_reservation" do
    get car_reservation_url(@car_reservation), as: :json
    assert_response :success
  end

  test "should update car_reservation" do
    patch car_reservation_url(@car_reservation), params: { car_reservation: { end_date: @car_reservation.end_date, location: @car_reservation.location, start_date: @car_reservation.start_date, total_price: @car_reservation.total_price } }, as: :json
    assert_response :success
  end

  test "should destroy car_reservation" do
    assert_difference("CarReservation.count", -1) do
      delete car_reservation_url(@car_reservation), as: :json
    end

    assert_response :no_content
  end
end
