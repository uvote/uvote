require 'test_helper'

class CriteriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @criterium = criteria(:one)
  end

  test "should get index" do
    get criteria_url, as: :json
    assert_response :success
  end

  test "should create criterium" do
    assert_difference('Criterium.count') do
      post criteria_url, params: { criterium: { event_id: @criterium.event_id, icon: @criterium.icon, name: @criterium.name } }, as: :json
    end

    assert_response 201
  end

  test "should show criterium" do
    get criterium_url(@criterium), as: :json
    assert_response :success
  end

  test "should update criterium" do
    patch criterium_url(@criterium), params: { criterium: { event_id: @criterium.event_id, icon: @criterium.icon, name: @criterium.name } }, as: :json
    assert_response 200
  end

  test "should destroy criterium" do
    assert_difference('Criterium.count', -1) do
      delete criterium_url(@criterium), as: :json
    end

    assert_response 204
  end
end
