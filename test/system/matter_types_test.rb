require "application_system_test_case"

class MatterTypesTest < ApplicationSystemTestCase
  setup do
    @matter_type = matter_types(:one)
  end

  test "visiting the index" do
    visit matter_types_url
    assert_selector "h1", text: "Matter types"
  end

  test "should create matter type" do
    visit matter_types_url
    click_on "New matter type"

    fill_in "Name", with: @matter_type.name
    click_on "Create Matter type"

    assert_text "Matter type was successfully created"
    click_on "Back"
  end

  test "should update Matter type" do
    visit matter_type_url(@matter_type)
    click_on "Edit this matter type", match: :first

    fill_in "Name", with: @matter_type.name
    click_on "Update Matter type"

    assert_text "Matter type was successfully updated"
    click_on "Back"
  end

  test "should destroy Matter type" do
    visit matter_type_url(@matter_type)
    click_on "Destroy this matter type", match: :first

    assert_text "Matter type was successfully destroyed"
  end
end
