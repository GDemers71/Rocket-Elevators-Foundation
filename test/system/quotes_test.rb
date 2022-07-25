require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  setup do
    @quote = quotes(:one)
  end

  test "visiting the index" do
    visit quotes_url
    assert_selector "h1", text: "Quotes"
  end

  test "creating a Quote" do
    visit quotes_url
    click_on "New Quote"

    fill_in "Amount of elevator needed", with: @quote.amount_of_elevator_needed
    fill_in "Building type", with: @quote.building_type
    fill_in "Final price", with: @quote.final_price
    fill_in "Hours of activity", with: @quote.hours_of_activity
    fill_in "Installation fees", with: @quote.installation_fees
    fill_in "Maximum number of occupants per floor", with: @quote.maximum_number_of_occupants_per_floor
    fill_in "Number of apartments", with: @quote.number_of_apartments
    fill_in "Number of basement", with: @quote.number_of_basement
    fill_in "Number of businesses", with: @quote.number_of_businesses
    fill_in "Number of elevator cages", with: @quote.number_of_elevator_cages
    fill_in "Number of floors", with: @quote.number_of_floors
    fill_in "Number of parking space", with: @quote.number_of_parking_space
    fill_in "Number of seperate tenant companies", with: @quote.number_of_seperate_tenant_companies
    fill_in "Quality of elevator service", with: @quote.quality_of_elevator_service
    fill_in "Total price of the elevators", with: @quote.total_price_of_the_elevators
    fill_in "Unit price of each elevator", with: @quote.unit_price_of_each_elevator
    click_on "Create Quote"

    assert_text "Quote was successfully created"
    click_on "Back"
  end

  test "updating a Quote" do
    visit quotes_url
    click_on "Edit", match: :first

    fill_in "Amount of elevator needed", with: @quote.amount_of_elevator_needed
    fill_in "Building type", with: @quote.building_type
    fill_in "Final price", with: @quote.final_price
    fill_in "Hours of activity", with: @quote.hours_of_activity
    fill_in "Installation fees", with: @quote.installation_fees
    fill_in "Maximum number of occupants per floor", with: @quote.maximum_number_of_occupants_per_floor
    fill_in "Number of apartments", with: @quote.number_of_apartments
    fill_in "Number of basement", with: @quote.number_of_basement
    fill_in "Number of businesses", with: @quote.number_of_businesses
    fill_in "Number of elevator cages", with: @quote.number_of_elevator_cages
    fill_in "Number of floors", with: @quote.number_of_floors
    fill_in "Number of parking space", with: @quote.number_of_parking_space
    fill_in "Number of seperate tenant companies", with: @quote.number_of_seperate_tenant_companies
    fill_in "Quality of elevator service", with: @quote.quality_of_elevator_service
    fill_in "Total price of the elevators", with: @quote.total_price_of_the_elevators
    fill_in "Unit price of each elevator", with: @quote.unit_price_of_each_elevator
    click_on "Update Quote"

    assert_text "Quote was successfully updated"
    click_on "Back"
  end

  test "destroying a Quote" do
    visit quotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quote was successfully destroyed"
  end
end
