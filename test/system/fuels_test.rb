require "application_system_test_case"

class FuelsTest < ApplicationSystemTestCase
  setup do
    @fuel = fuels(:one)
  end

  test "visiting the index" do
    visit fuels_url
    assert_selector "h1", text: "Fuels"
  end

  test "should create fuel" do
    visit fuels_url
    click_on "New fuel"

    fill_in "Minimum receipt value percentage", with: @fuel.minimum_receipt_value_percentage
    fill_in "Name", with: @fuel.name
    fill_in "Refund factor percentage", with: @fuel.refund_factor_percentage
    click_on "Create Fuel"

    assert_text "Fuel was successfully created"
    click_on "Back"
  end

  test "should update Fuel" do
    visit fuel_url(@fuel)
    click_on "Edit this fuel", match: :first

    fill_in "Minimum receipt value percentage", with: @fuel.minimum_receipt_value_percentage
    fill_in "Name", with: @fuel.name
    fill_in "Refund factor percentage", with: @fuel.refund_factor_percentage
    click_on "Update Fuel"

    assert_text "Fuel was successfully updated"
    click_on "Back"
  end

  test "should destroy Fuel" do
    visit fuel_url(@fuel)
    click_on "Destroy this fuel", match: :first

    assert_text "Fuel was successfully destroyed"
  end
end
