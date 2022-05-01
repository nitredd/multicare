require "application_system_test_case"

class TestProceduresTest < ApplicationSystemTestCase
  setup do
    @test_procedure = test_procedures(:one)
  end

  test "visiting the index" do
    visit test_procedures_url
    assert_selector "h1", text: "Test procedures"
  end

  test "should create test procedure" do
    visit test_procedures_url
    click_on "New test procedure"

    fill_in "Department", with: @test_procedure.department_id
    fill_in "Matter type", with: @test_procedure.matter_type_id
    fill_in "Name", with: @test_procedure.name
    click_on "Create Test procedure"

    assert_text "Test procedure was successfully created"
    click_on "Back"
  end

  test "should update Test procedure" do
    visit test_procedure_url(@test_procedure)
    click_on "Edit this test procedure", match: :first

    fill_in "Department", with: @test_procedure.department_id
    fill_in "Matter type", with: @test_procedure.matter_type_id
    fill_in "Name", with: @test_procedure.name
    click_on "Update Test procedure"

    assert_text "Test procedure was successfully updated"
    click_on "Back"
  end

  test "should destroy Test procedure" do
    visit test_procedure_url(@test_procedure)
    click_on "Destroy this test procedure", match: :first

    assert_text "Test procedure was successfully destroyed"
  end
end
