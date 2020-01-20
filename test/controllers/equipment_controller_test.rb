require 'test_helper'

class EquipmentControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment = equipment(:one)
  end

  test "should get index" do
    get equipment_index_url
    assert_response :success
  end

  test "should get new" do
    get new_equipment_url
    assert_response :success
  end

  test "should create equipment" do
    assert_difference('Equipment.count') do
      post equipment_index_url, params: { equipment: { acquisition_cost: @equipment.acquisition_cost, acquisition_date: @equipment.acquisition_date, country_of_origin: @equipment.country_of_origin, department_location: @equipment.department_location, description: @equipment.description, estimated_useful_years: @equipment.estimated_useful_years, make_manufacturer: @equipment.make_manufacturer, operational: @equipment.operational, operational_with_issues: @equipment.operational_with_issues, out_of_order: @equipment.out_of_order, quantity: @equipment.quantity, remarks: @equipment.remarks, serial_number: @equipment.serial_number, total: @equipment.total, unverifiable: @equipment.unverifiable, year_commissioned: @equipment.year_commissioned } }
    end

    assert_redirected_to equipment_url(Equipment.last)
  end

  test "should show equipment" do
    get equipment_url(@equipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipment_url(@equipment)
    assert_response :success
  end

  test "should update equipment" do
    patch equipment_url(@equipment), params: { equipment: { acquisition_cost: @equipment.acquisition_cost, acquisition_date: @equipment.acquisition_date, country_of_origin: @equipment.country_of_origin, department_location: @equipment.department_location, description: @equipment.description, estimated_useful_years: @equipment.estimated_useful_years, make_manufacturer: @equipment.make_manufacturer, operational: @equipment.operational, operational_with_issues: @equipment.operational_with_issues, out_of_order: @equipment.out_of_order, quantity: @equipment.quantity, remarks: @equipment.remarks, serial_number: @equipment.serial_number, total: @equipment.total, unverifiable: @equipment.unverifiable, year_commissioned: @equipment.year_commissioned } }
    assert_redirected_to equipment_url(@equipment)
  end

  test "should destroy equipment" do
    assert_difference('Equipment.count', -1) do
      delete equipment_url(@equipment)
    end

    assert_redirected_to equipment_index_url
  end
end
