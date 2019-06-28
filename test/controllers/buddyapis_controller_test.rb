require 'test_helper'

class BuddyapisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buddyapi = buddyapis(:one)
  end

  test "should get index" do
    get buddyapis_url, as: :json
    assert_response :success
  end

  test "should create buddyapi" do
    assert_difference('Buddyapi.count') do
      post buddyapis_url, params: { buddyapi: { content: @buddyapi.content, user_name: @buddyapi.user_name } }, as: :json
    end

    assert_response 201
  end

  test "should show buddyapi" do
    get buddyapi_url(@buddyapi), as: :json
    assert_response :success
  end

  test "should update buddyapi" do
    patch buddyapi_url(@buddyapi), params: { buddyapi: { content: @buddyapi.content, user_name: @buddyapi.user_name } }, as: :json
    assert_response 200
  end

  test "should destroy buddyapi" do
    assert_difference('Buddyapi.count', -1) do
      delete buddyapi_url(@buddyapi), as: :json
    end

    assert_response 204
  end
end
