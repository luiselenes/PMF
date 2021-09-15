require "test_helper"

class GreenHousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @green_house = green_houses(:one)
  end

  test "should get index" do
    get green_houses_url, as: :json
    assert_response :success
  end

  test "should create green_house" do
    assert_difference('GreenHouse.count') do
      post green_houses_url, params: { green_house: { agricultural_companies_id: @green_house.agricultural_companies_id, area_grooves: @green_house.area_grooves, code_greenhouse: @green_house.code_greenhouse } }, as: :json
    end

    assert_response 201
  end

  test "should show green_house" do
    get green_house_url(@green_house), as: :json
    assert_response :success
  end

  test "should update green_house" do
    patch green_house_url(@green_house), params: { green_house: { agricultural_companies_id: @green_house.agricultural_companies_id, area_grooves: @green_house.area_grooves, code_greenhouse: @green_house.code_greenhouse } }, as: :json
    assert_response 200
  end

  test "should destroy green_house" do
    assert_difference('GreenHouse.count', -1) do
      delete green_house_url(@green_house), as: :json
    end

    assert_response 204
  end
end
