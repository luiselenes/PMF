require "test_helper"

class AgriculturalCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agricultural_company = agricultural_companies(:one)
  end

  test "should get index" do
    get agricultural_companies_url, as: :json
    assert_response :success
  end

  test "should create agricultural_company" do
    assert_difference('AgriculturalCompany.count') do
      post agricultural_companies_url, params: { agricultural_company: { address: @agricultural_company.address, name: @agricultural_company.name, phone: @agricultural_company.phone, responsable: @agricultural_company.responsable } }, as: :json
    end

    assert_response 201
  end

  test "should show agricultural_company" do
    get agricultural_company_url(@agricultural_company), as: :json
    assert_response :success
  end

  test "should update agricultural_company" do
    patch agricultural_company_url(@agricultural_company), params: { agricultural_company: { address: @agricultural_company.address, name: @agricultural_company.name, phone: @agricultural_company.phone, responsable: @agricultural_company.responsable } }, as: :json
    assert_response 200
  end

  test "should destroy agricultural_company" do
    assert_difference('AgriculturalCompany.count', -1) do
      delete agricultural_company_url(@agricultural_company), as: :json
    end

    assert_response 204
  end
end
