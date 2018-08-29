require 'test_helper'

class Hod::UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hod_user = hod_users(:one)
  end

  test "should get index" do
    get hod_users_url
    assert_response :success
  end

  test "should get new" do
    get new_hod_user_url
    assert_response :success
  end

  test "should create hod_user" do
    assert_difference('Hod::User.count') do
      post hod_users_url, params: { hod_user: { department_id: @hod_user.department_id, email: @hod_user.email, name: @hod_user.name, password_hash: @hod_user.password_hash, password_salt: @hod_user.password_salt } }
    end

    assert_redirected_to hod_user_url(Hod::User.last)
  end

  test "should show hod_user" do
    get hod_user_url(@hod_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_hod_user_url(@hod_user)
    assert_response :success
  end

  test "should update hod_user" do
    patch hod_user_url(@hod_user), params: { hod_user: { department_id: @hod_user.department_id, email: @hod_user.email, name: @hod_user.name, password_hash: @hod_user.password_hash, password_salt: @hod_user.password_salt } }
    assert_redirected_to hod_user_url(@hod_user)
  end

  test "should destroy hod_user" do
    assert_difference('Hod::User.count', -1) do
      delete hod_user_url(@hod_user)
    end

    assert_redirected_to hod_users_url
  end
end
