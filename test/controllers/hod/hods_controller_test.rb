require 'test_helper'

class Hod::HodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hod_hod = hod_hods(:one)
  end

  test "should get index" do
    get hod_hods_url
    assert_response :success
  end

  test "should get new" do
    get new_hod_hod_url
    assert_response :success
  end

  test "should create hod_hod" do
    assert_difference('Hod::Hod.count') do
      post hod_hods_url, params: { hod_hod: { department_id: @hod_hod.department_id, email: @hod_hod.email, name: @hod_hod.name, password_hash: @hod_hod.password_hash, password_salt: @hod_hod.password_salt, phone: @hod_hod.phone, sex: @hod_hod.sex } }
    end

    assert_redirected_to hod_hod_url(Hod::Hod.last)
  end

  test "should show hod_hod" do
    get hod_hod_url(@hod_hod)
    assert_response :success
  end

  test "should get edit" do
    get edit_hod_hod_url(@hod_hod)
    assert_response :success
  end

  test "should update hod_hod" do
    patch hod_hod_url(@hod_hod), params: { hod_hod: { department_id: @hod_hod.department_id, email: @hod_hod.email, name: @hod_hod.name, password_hash: @hod_hod.password_hash, password_salt: @hod_hod.password_salt, phone: @hod_hod.phone, sex: @hod_hod.sex } }
    assert_redirected_to hod_hod_url(@hod_hod)
  end

  test "should destroy hod_hod" do
    assert_difference('Hod::Hod.count', -1) do
      delete hod_hod_url(@hod_hod)
    end

    assert_redirected_to hod_hods_url
  end
end
