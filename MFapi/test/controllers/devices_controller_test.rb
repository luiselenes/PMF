require "test_helper"

class DevicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @device = devices(:one)
  end

  test "should get index" do
    get devices_url, as: :json
    assert_response :success
  end

  test "should create device" do
    assert_difference('Device.count') do
      post devices_url, params: { device: { agricultural_companies_id: @device.agricultural_companies_id, capacity: @device.capacity, name: @device.name } }, as: :json
    end

    assert_response 201
  end

  test "should show device" do
    get device_url(@device), as: :json
    assert_response :success
  end

  test "should update device" do
    patch device_url(@device), params: { device: { agricultural_companies_id: @device.agricultural_companies_id, capacity: @device.capacity, name: @device.name } }, as: :json
    assert_response 200
  end

  test "should destroy device" do
    assert_difference('Device.count', -1) do
      delete device_url(@device), as: :json
    end

    assert_response 204
  end
end
