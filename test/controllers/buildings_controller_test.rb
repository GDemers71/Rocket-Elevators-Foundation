require 'test_helper'

class BuildingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @building = buildings(:one)
  end

  test "should get index" do
    get buildings_url
    assert_response :success
  end

  test "should get new" do
    get new_building_url
    assert_response :success
  end

  test "should create building" do
    assert_difference('Building.count') do
      post buildings_url, params: { building: { building_administrator_email: @building.building_administrator_email, building_administrator_full_name: @building.building_administrator_full_name, building_administrator_phone: @building.building_administrator_phone, building_technical_contact_email: @building.building_technical_contact_email, building_technical_contact_full_name: @building.building_technical_contact_full_name, building_technical_contact_phone: @building.building_technical_contact_phone, number_and_street: @building.number_and_street } }
    end

    assert_redirected_to building_url(Building.last)
  end

  test "should show building" do
    get building_url(@building)
    assert_response :success
  end

  test "should get edit" do
    get edit_building_url(@building)
    assert_response :success
  end

  test "should update building" do
    patch building_url(@building), params: { building: { building_administrator_email: @building.building_administrator_email, building_administrator_full_name: @building.building_administrator_full_name, building_administrator_phone: @building.building_administrator_phone, building_technical_contact_email: @building.building_technical_contact_email, building_technical_contact_full_name: @building.building_technical_contact_full_name, building_technical_contact_phone: @building.building_technical_contact_phone, number_and_street: @building.number_and_street } }
    assert_redirected_to building_url(@building)
  end

  test "should destroy building" do
    assert_difference('Building.count', -1) do
      delete building_url(@building)
    end

    assert_redirected_to buildings_url
  end
end
