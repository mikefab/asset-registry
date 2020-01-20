require "application_system_test_case"

class EquipmentTest < ApplicationSystemTestCase
  setup do
    @equipment = equipment(:one)
  end

  test "visiting the index" do
    visit equipment_url
    assert_selector "h1", text: "Equipment"
  end

  test "creating a Equipment" do
    visit equipment_url
    click_on "New Equipment"

    fill_in "Acquisition cost", with: @equipment.acquisition_cost
    fill_in "Acquisition date", with: @equipment.acquisition_date
    fill_in "Country of origin", with: @equipment.country_of_origin
    fill_in "Department location", with: @equipment.department_location
    fill_in "Description", with: @equipment.description
    fill_in "Estimated useful years", with: @equipment.estimated_useful_years
    fill_in "Make manufacturer", with: @equipment.make_manufacturer
    check "Operational" if @equipment.operational
    fill_in "Operational with issues", with: @equipment.operational_with_issues
    fill_in "Out of order", with: @equipment.out_of_order
    fill_in "Quantity", with: @equipment.quantity
    fill_in "Remarks", with: @equipment.remarks
    fill_in "Serial number", with: @equipment.serial_number
    fill_in "Total", with: @equipment.total
    check "Unverifiable" if @equipment.unverifiable
    fill_in "Year commissioned", with: @equipment.year_commissioned
    click_on "Create Equipment"

    assert_text "Equipment was successfully created"
    click_on "Back"
  end

  test "updating a Equipment" do
    visit equipment_url
    click_on "Edit", match: :first

    fill_in "Acquisition cost", with: @equipment.acquisition_cost
    fill_in "Acquisition date", with: @equipment.acquisition_date
    fill_in "Country of origin", with: @equipment.country_of_origin
    fill_in "Department location", with: @equipment.department_location
    fill_in "Description", with: @equipment.description
    fill_in "Estimated useful years", with: @equipment.estimated_useful_years
    fill_in "Make manufacturer", with: @equipment.make_manufacturer
    check "Operational" if @equipment.operational
    fill_in "Operational with issues", with: @equipment.operational_with_issues
    fill_in "Out of order", with: @equipment.out_of_order
    fill_in "Quantity", with: @equipment.quantity
    fill_in "Remarks", with: @equipment.remarks
    fill_in "Serial number", with: @equipment.serial_number
    fill_in "Total", with: @equipment.total
    check "Unverifiable" if @equipment.unverifiable
    fill_in "Year commissioned", with: @equipment.year_commissioned
    click_on "Update Equipment"

    assert_text "Equipment was successfully updated"
    click_on "Back"
  end

  test "destroying a Equipment" do
    visit equipment_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Equipment was successfully destroyed"
  end
end
