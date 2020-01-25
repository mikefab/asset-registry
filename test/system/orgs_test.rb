require "application_system_test_case"

class OrgsTest < ApplicationSystemTestCase
  setup do
    @org = orgs(:one)
  end

  test "visiting the index" do
    visit orgs_url
    assert_selector "h1", text: "Orgs"
  end

  test "creating a Org" do
    visit orgs_url
    click_on "New Org"

    fill_in "Address", with: @org.address
    fill_in "Chiefdom", with: @org.chiefdom
    fill_in "District", with: @org.district
    fill_in "Kind", with: @org.kind
    fill_in "Lat", with: @org.lat
    fill_in "Lon", with: @org.lon
    fill_in "Name", with: @org.name
    fill_in "Region", with: @org.region
    fill_in "Section", with: @org.section
    click_on "Create Org"

    assert_text "Org was successfully created"
    click_on "Back"
  end

  test "updating a Org" do
    visit orgs_url
    click_on "Edit", match: :first

    fill_in "Address", with: @org.address
    fill_in "Chiefdom", with: @org.chiefdom
    fill_in "District", with: @org.district
    fill_in "Kind", with: @org.kind
    fill_in "Lat", with: @org.lat
    fill_in "Lon", with: @org.lon
    fill_in "Name", with: @org.name
    fill_in "Region", with: @org.region
    fill_in "Section", with: @org.section
    click_on "Update Org"

    assert_text "Org was successfully updated"
    click_on "Back"
  end

  test "destroying a Org" do
    visit orgs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Org was successfully destroyed"
  end
end