require "test_helper"

class ManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manager = managers(:one)
  end

  test "should get index" do
    get managers_url, as: :json
    assert_response :success
  end

  test "should create manager" do
    assert_difference("Manager.count") do
      post managers_url, params: { manager: { first_name: @manager.first_name, last_name: @manager.last_name, notes: @manager.notes } }, as: :json
    end

    assert_response :created
  end

  test "should show manager" do
    get manager_url(@manager), as: :json
    assert_response :success
  end

  test "should update manager" do
    patch manager_url(@manager), params: { manager: { first_name: @manager.first_name, last_name: @manager.last_name, notes: @manager.notes } }, as: :json
    assert_response :success
  end

  test "should destroy manager" do
    assert_difference("Manager.count", -1) do
      delete manager_url(@manager), as: :json
    end

    assert_response :no_content
  end
end
