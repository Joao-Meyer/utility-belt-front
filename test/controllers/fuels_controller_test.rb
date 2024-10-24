require "test_helper"

class FuelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fuel = fuels(:one)
  end

  test "should get index" do
    get fuels_url
    assert_response :success
  end

  test "should get new" do
    get new_fuel_url
    assert_response :success
  end

  test "should create fuel" do
    assert_difference("Fuel.count") do
      post fuels_url, params: { fuel: { minimum_receipt_value_percentage: @fuel.minimum_receipt_value_percentage, name: @fuel.name, refund_factor_percentage: @fuel.refund_factor_percentage } }
    end

    assert_redirected_to fuel_url(Fuel.last)
  end

  test "should show fuel" do
    get fuel_url(@fuel)
    assert_response :success
  end

  test "should get edit" do
    get edit_fuel_url(@fuel)
    assert_response :success
  end

  test "should update fuel" do
    patch fuel_url(@fuel), params: { fuel: { minimum_receipt_value_percentage: @fuel.minimum_receipt_value_percentage, name: @fuel.name, refund_factor_percentage: @fuel.refund_factor_percentage } }
    assert_redirected_to fuel_url(@fuel)
  end

  test "should destroy fuel" do
    assert_difference("Fuel.count", -1) do
      delete fuel_url(@fuel)
    end

    assert_redirected_to fuels_url
  end
end
