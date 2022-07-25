require "application_system_test_case"

class LeadsTest < ApplicationSystemTestCase
  setup do
    @lead = leads(:one)
  end

  test "visiting the index" do
    visit leads_url
    assert_selector "h1", text: "Leads"
  end

  test "creating a Lead" do
    visit leads_url
    click_on "New Lead"

    fill_in "Company name", with: @lead.company_name
    fill_in "Date", with: @lead.date
    fill_in "Department", with: @lead.department
    fill_in "Email", with: @lead.email
    fill_in "File attachment", with: @lead.file_attachment
    fill_in "Full name", with: @lead.full_name
    fill_in "Message", with: @lead.message
    fill_in "Phone", with: @lead.phone
    fill_in "Project description", with: @lead.project_description
    fill_in "Project name", with: @lead.project_name
    click_on "Create Lead"

    assert_text "Your message was successfully created"
    click_on "Back"
  end

  test "updating a Lead" do
    visit leads_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @lead.company_name
    fill_in "Date", with: @lead.date
    fill_in "Department", with: @lead.department
    fill_in "Email", with: @lead.email
    fill_in "File attachment", with: @lead.file_attachment
    fill_in "Full name", with: @lead.full_name
    fill_in "Message", with: @lead.message
    fill_in "Phone", with: @lead.phone
    fill_in "Project description", with: @lead.project_description
    fill_in "Project name", with: @lead.project_name
    click_on "Update Message"

    assert_text "Your message was successfully updated"
    click_on "Back"
  end

  test "destroying a Lead" do
    visit leads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lead was successfully destroyed"
  end
end
