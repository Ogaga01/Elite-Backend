require "test_helper"

class AirplanesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @airplane = airplanes(:one)
  end

  test "should get index" do
    get airplanes_url, as: :json
    assert_response :success
  end

  test "should create airplane" do
    assert_difference("Airplane.count") do
      post airplanes_url, params: { airplane: { about: @airplane.about, baggage: @airplane.baggage, cabin: @airplane.cabin, capacity: @airplane.capacity, crew: @airplane.crew, image: @airplane.image, name: @airplane.name, price: @airplane.price, seat: @airplane.seat, size: @airplane.size } }, as: :json
    end

    assert_response :created
  end

  test "should show airplane" do
    get airplane_url(@airplane), as: :json
    assert_response :success
  end

  test "should update airplane" do
    patch airplane_url(@airplane), params: { airplane: { about: @airplane.about, baggage: @airplane.baggage, cabin: @airplane.cabin, capacity: @airplane.capacity, crew: @airplane.crew, image: @airplane.image, name: @airplane.name, price: @airplane.price, seat: @airplane.seat, size: @airplane.size } }, as: :json
    assert_response :success
  end

  test "should destroy airplane" do
    assert_difference("Airplane.count", -1) do
      delete airplane_url(@airplane), as: :json
    end

    assert_response :no_content
  end
end
