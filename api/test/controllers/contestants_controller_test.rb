require 'test_helper'

class ContestantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contestant = contestants(:one)
  end

  test "should get index" do
    get contestants_url, as: :json
    assert_response :success
  end

  test "should create contestant" do
    assert_difference('Contestant.count') do
      post contestants_url, params: { contestant: { icon: @contestant.icon, name: @contestant.name, references: @contestant.references } }, as: :json
    end

    assert_response 201
  end

  test "should show contestant" do
    get contestant_url(@contestant), as: :json
    assert_response :success
  end

  test "should update contestant" do
    patch contestant_url(@contestant), params: { contestant: { icon: @contestant.icon, name: @contestant.name, references: @contestant.references } }, as: :json
    assert_response 200
  end

  test "should destroy contestant" do
    assert_difference('Contestant.count', -1) do
      delete contestant_url(@contestant), as: :json
    end

    assert_response 204
  end
end
