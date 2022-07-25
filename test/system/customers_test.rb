require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Company contact email", with: @customer.company_contact_email
    fill_in "Company contact full name", with: @customer.company_contact_full_name
    fill_in "Company contact phone", with: @customer.company_contact_phone
    fill_in "Company description", with: @customer.company_description
    fill_in "Company headquarters address", with: @customer.company_headquarters_address
    fill_in "Company name", with: @customer.company_name
    fill_in "Service technical authority full name", with: @customer.service_technical_authority_full_name
    fill_in "Service technical authority phone", with: @customer.service_technical_authority_phone
    fill_in "Service technical manager email", with: @customer.service_technical_manager_email
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Company contact email", with: @customer.company_contact_email
    fill_in "Company contact full name", with: @customer.company_contact_full_name
    fill_in "Company contact phone", with: @customer.company_contact_phone
    fill_in "Company description", with: @customer.company_description
    fill_in "Company headquarters address", with: @customer.company_headquarters_address
    fill_in "Company name", with: @customer.company_name
    fill_in "Service technical authority full name", with: @customer.service_technical_authority_full_name
    fill_in "Service technical authority phone", with: @customer.service_technical_authority_phone
    fill_in "Service technical manager email", with: @customer.service_technical_manager_email
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
