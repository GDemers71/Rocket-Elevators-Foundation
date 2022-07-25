require 'test_helper'

class BatteriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @battery = batteries(:one)
  end

  test "should get index" do
    get batteries_url
    assert_response :success
  end

  test "should get new" do
    get new_battery_url
    assert_response :success
  end

  test "should create battery" do
    assert_difference('Battery.count') do
      post batteries_url, params: { battery: { certificate_of_operation: @battery.certificate_of_operation, commissioning_date: @battery.commissioning_date, employeeId: @battery.employeeId, informations: @battery.informations, last_inspection_date: @battery.last_inspection_date, notes: @battery.notes, status: @battery.status, type: @battery.type } }
    end

    assert_redirected_to battery_url(Battery.last)
  end

  test "should show battery" do
    get battery_url(@battery)
    assert_response :success
  end

  test "should get edit" do
    get edit_battery_url(@battery)
    assert_response :success
  end

  test "should update battery" do
    patch battery_url(@battery), params: { battery: { certificate_of_operation: @battery.certificate_of_operation, commissioning_date: @battery.commissioning_date, employeeId: @battery.employeeId, informations: @battery.informations, last_inspection_date: @battery.last_inspection_date, notes: @battery.notes, status: @battery.status, type: @battery.type } }
    assert_redirected_to battery_url(@battery)
  end

  test "should destroy battery" do
    assert_difference('Battery.count', -1) do
      delete battery_url(@battery)
    end

    assert_redirected_to batteries_url
  end
end
