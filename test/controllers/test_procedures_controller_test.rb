require "test_helper"

class TestProceduresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_procedure = test_procedures(:one)
  end

  test "should get index" do
    get test_procedures_url
    assert_response :success
  end

  test "should get new" do
    get new_test_procedure_url
    assert_response :success
  end

  test "should create test_procedure" do
    assert_difference("TestProcedure.count") do
      post test_procedures_url, params: { test_procedure: { department_id: @test_procedure.department_id, matter_type_id: @test_procedure.matter_type_id, name: @test_procedure.name } }
    end

    assert_redirected_to test_procedure_url(TestProcedure.last)
  end

  test "should show test_procedure" do
    get test_procedure_url(@test_procedure)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_procedure_url(@test_procedure)
    assert_response :success
  end

  test "should update test_procedure" do
    patch test_procedure_url(@test_procedure), params: { test_procedure: { department_id: @test_procedure.department_id, matter_type_id: @test_procedure.matter_type_id, name: @test_procedure.name } }
    assert_redirected_to test_procedure_url(@test_procedure)
  end

  test "should destroy test_procedure" do
    assert_difference("TestProcedure.count", -1) do
      delete test_procedure_url(@test_procedure)
    end

    assert_redirected_to test_procedures_url
  end
end
