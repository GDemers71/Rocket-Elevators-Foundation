require 'test_helper'

class QuotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quote = quotes(:one)
  end

  test "should get index" do
    get quotes_url
    assert_response :success
  end

  test "should get new" do
    get new_quote_url
    assert_response :success
  end

  test "should create quote" do
    assert_difference('Quote.count') do
      post quotes_url, params: { quote: { amount_of_elevator_needed: @quote.amount_of_elevator_needed, building_type: @quote.building_type, final_price: @quote.final_price, hours_of_activity: @quote.hours_of_activity, installation_fees: @quote.installation_fees, maximum_number_of_occupants_per_floor: @quote.maximum_number_of_occupants_per_floor, number_of_apartments: @quote.number_of_apartments, number_of_basement: @quote.number_of_basement, number_of_businesses: @quote.number_of_businesses, number_of_elevator_cages: @quote.number_of_elevator_cages, number_of_floors: @quote.number_of_floors, number_of_parking_space: @quote.number_of_parking_space, number_of_seperate_tenant_companies: @quote.number_of_seperate_tenant_companies, quality_of_elevator_service: @quote.quality_of_elevator_service, total_price_of_the_elevators: @quote.total_price_of_the_elevators, unit_price_of_each_elevator: @quote.unit_price_of_each_elevator } }
    end

    assert_redirected_to quote_url(Quote.last)
  end

  test "should show quote" do
    get quote_url(@quote)
    assert_response :success
  end

  test "should get edit" do
    get edit_quote_url(@quote)
    assert_response :success
  end

  test "should update quote" do
    patch quote_url(@quote), params: { quote: { amount_of_elevator_needed: @quote.amount_of_elevator_needed, building_type: @quote.building_type, final_price: @quote.final_price, hours_of_activity: @quote.hours_of_activity, installation_fees: @quote.installation_fees, maximum_number_of_occupants_per_floor: @quote.maximum_number_of_occupants_per_floor, number_of_apartments: @quote.number_of_apartments, number_of_basement: @quote.number_of_basement, number_of_businesses: @quote.number_of_businesses, number_of_elevator_cages: @quote.number_of_elevator_cages, number_of_floors: @quote.number_of_floors, number_of_parking_space: @quote.number_of_parking_space, number_of_seperate_tenant_companies: @quote.number_of_seperate_tenant_companies, quality_of_elevator_service: @quote.quality_of_elevator_service, total_price_of_the_elevators: @quote.total_price_of_the_elevators, unit_price_of_each_elevator: @quote.unit_price_of_each_elevator } }
    assert_redirected_to quote_url(@quote)
  end

  test "should destroy quote" do
    assert_difference('Quote.count', -1) do
      delete quote_url(@quote)
    end

    assert_redirected_to quotes_url
  end
end
