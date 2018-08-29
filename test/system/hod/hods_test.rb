require "application_system_test_case"

class Hod::HodsTest < ApplicationSystemTestCase
  setup do
    @hod_hod = hod_hods(:one)
  end

  test "visiting the index" do
    visit hod_hods_url
    assert_selector "h1", text: "Hod/Hods"
  end

  test "creating a Hod" do
    visit hod_hods_url
    click_on "New Hod/Hod"

    fill_in "Department", with: @hod_hod.department_id
    fill_in "Email", with: @hod_hod.email
    fill_in "Name", with: @hod_hod.name
    fill_in "Password Hash", with: @hod_hod.password_hash
    fill_in "Password Salt", with: @hod_hod.password_salt
    fill_in "Phone", with: @hod_hod.phone
    fill_in "Sex", with: @hod_hod.sex
    click_on "Create Hod"

    assert_text "Hod was successfully created"
    click_on "Back"
  end

  test "updating a Hod" do
    visit hod_hods_url
    click_on "Edit", match: :first

    fill_in "Department", with: @hod_hod.department_id
    fill_in "Email", with: @hod_hod.email
    fill_in "Name", with: @hod_hod.name
    fill_in "Password Hash", with: @hod_hod.password_hash
    fill_in "Password Salt", with: @hod_hod.password_salt
    fill_in "Phone", with: @hod_hod.phone
    fill_in "Sex", with: @hod_hod.sex
    click_on "Update Hod"

    assert_text "Hod was successfully updated"
    click_on "Back"
  end

  test "destroying a Hod" do
    visit hod_hods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hod was successfully destroyed"
  end
end
