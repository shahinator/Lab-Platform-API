require "test_helper"

class LabsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get labs_index_url
    assert_response :success
  end

  test "should get show" do
    get labs_show_url
    assert_response :success
  end

  test "should get create" do
    get labs_create_url
    assert_response :success
  end

  test "should get update" do
    get labs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get labs_destroy_url
    assert_response :success
  end
end
