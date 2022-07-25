require "application_system_test_case"

class BuildingsTest < ApplicationSystemTestCase
  setup do
    @building = buildings(:one)
  end

  test "visiting the index" do
    visit buildings_url
    assert_selector "h1", text: "Buildings"
  end

  test "creating a Building" do
    visit buildings_url
    click_on "New Building"

    fill_in "Building administrator email", with: @building.building_administrator_email
    fill_in "Building administrator full name", with: @building.building_administrator_full_name
    fill_in "Building administrator phone", with: @building.building_administrator_phone
    fill_in "Building technical contact email", with: @building.building_technical_contact_email
    fill_in "Building technical contact full name", with: @building.building_technical_contact_full_name
    fill_in "Building technical contact phone", with: @building.building_technical_contact_phone
    fill_in "Number and street", with: @building.number_and_street
    click_on "Create Building"

    assert_text "Building was successfully created"
    click_on "Back"
  end

  test "updating a Building" do
    visit buildings_url
    click_on "Edit", match: :first

    fill_in "Building administrator email", with: @building.building_administrator_email
    fill_in "Building administrator full name", with: @building.building_administrator_full_name
    fill_in "Building administrator phone", with: @building.building_administrator_phone
    fill_in "Building technical contact email", with: @building.building_technical_contact_email
    fill_in "Building technical contact full name", with: @building.building_technical_contact_full_name
    fill_in "Building technical contact phone", with: @building.building_technical_contact_phone
    fill_in "Number and street", with: @building.number_and_street
    click_on "Update Building"

    assert_text "Building was successfully updated"
    click_on "Back"
  end

  test "destroying a Building" do
    visit buildings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Building was successfully destroyed"
  end
end
