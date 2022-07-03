require "test_helper"

class AttributtesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get attributtes_index_url
    assert_response :success
  end

  test "should get show" do
    get attributtes_show_url
    assert_response :success
  end

  test "should get create" do
    get attributtes_create_url
    assert_response :success
  end

  test "should get update" do
    get attributtes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get attributtes_destroy_url
    assert_response :success
  end
end
