require "application_system_test_case"

class ElevatorsTest < ApplicationSystemTestCase
  setup do
    @elevator = elevators(:one)
  end

  test "visiting the index" do
    visit elevators_url
    assert_selector "h1", text: "Elevators"
  end

  test "creating a Elevator" do
    visit elevators_url
    click_on "New Elevator"

    fill_in "Commissioning date", with: @elevator.commissioning_date
    fill_in "Information", with: @elevator.information
    fill_in "Inspection certificate", with: @elevator.inspection_certificate
    fill_in "Last inspection date", with: @elevator.last_inspection_date
    fill_in "Model", with: @elevator.model
    fill_in "Notes", with: @elevator.notes
    fill_in "Serial number", with: @elevator.serial_number
    fill_in "Status", with: @elevator.status
    fill_in "Type", with: @elevator.type
    click_on "Create Elevator"

    assert_text "Elevator was successfully created"
    click_on "Back"
  end

  test "updating a Elevator" do
    visit elevators_url
    click_on "Edit", match: :first

    fill_in "Commissioning date", with: @elevator.commissioning_date
    fill_in "Information", with: @elevator.information
    fill_in "Inspection certificate", with: @elevator.inspection_certificate
    fill_in "Last inspection date", with: @elevator.last_inspection_date
    fill_in "Model", with: @elevator.model
    fill_in "Notes", with: @elevator.notes
    fill_in "Serial number", with: @elevator.serial_number
    fill_in "Status", with: @elevator.status
    fill_in "Type", with: @elevator.type
    click_on "Update Elevator"

    assert_text "Elevator was successfully updated"
    click_on "Back"
  end

  test "destroying a Elevator" do
    visit elevators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Elevator was successfully destroyed"
  end
end
