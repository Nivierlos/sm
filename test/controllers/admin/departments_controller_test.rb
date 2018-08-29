require 'test_helper'

class Admin::DepartmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_departments_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_departments_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_departments_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_departments_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_departments_destroy_url
    assert_response :success
  end

  test "should get index" do
    get admin_departments_index_url
    assert_response :success
  end

  test "should get sindex" do
    get admin_departments_sindex_url
    assert_response :success
  end

  test "should get rindex" do
    get admin_departments_rindex_url
    assert_response :success
  end

  test "should get cindex" do
    get admin_departments_cindex_url
    assert_response :success
  end

  test "should get show" do
    get admin_departments_show_url
    assert_response :success
  end

  test "should get sshow" do
    get admin_departments_sshow_url
    assert_response :success
  end

  test "should get rshow" do
    get admin_departments_rshow_url
    assert_response :success
  end

  test "should get cshow" do
    get admin_departments_cshow_url
    assert_response :success
  end

end
