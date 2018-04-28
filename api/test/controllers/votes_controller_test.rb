require 'test_helper'

class VotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vote = votes(:one)
  end

  test "should get index" do
    get votes_url, as: :json
    assert_response :success
  end

  test "should create vote" do
    assert_difference('Vote.count') do
      post votes_url, params: { vote: { contestant_id: @vote.contestant_id, criterium_id: @vote.criterium_id, vote_type: @vote.vote_type, voter_id: @vote.voter_id } }, as: :json
    end

    assert_response 201
  end

  test "should show vote" do
    get vote_url(@vote), as: :json
    assert_response :success
  end

  test "should update vote" do
    patch vote_url(@vote), params: { vote: { contestant_id: @vote.contestant_id, criterium_id: @vote.criterium_id, vote_type: @vote.vote_type, voter_id: @vote.voter_id } }, as: :json
    assert_response 200
  end

  test "should destroy vote" do
    assert_difference('Vote.count', -1) do
      delete vote_url(@vote), as: :json
    end

    assert_response 204
  end
end
