require "test_helper"

class CrudsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cruds_index_url
    assert_response :success
  end

  test "should get show" do
    get cruds_show_url
    assert_response :success
  end

  test "should get create" do
    get cruds_create_url
    assert_response :success
  end

  test "should get new" do
    get cruds_new_url
    assert_response :success
  end

  test "should get edit" do
    get cruds_edit_url
    assert_response :success
  end

  test "should get update" do
    get cruds_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cruds_destroy_url
    assert_response :success
  end
end
