require "test_helper"

class MatterTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matter_type = matter_types(:one)
  end

  test "should get index" do
    get matter_types_url
    assert_response :success
  end

  test "should get new" do
    get new_matter_type_url
    assert_response :success
  end

  test "should create matter_type" do
    assert_difference("MatterType.count") do
      post matter_types_url, params: { matter_type: { name: @matter_type.name } }
    end

    assert_redirected_to matter_type_url(MatterType.last)
  end

  test "should show matter_type" do
    get matter_type_url(@matter_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_matter_type_url(@matter_type)
    assert_response :success
  end

  test "should update matter_type" do
    patch matter_type_url(@matter_type), params: { matter_type: { name: @matter_type.name } }
    assert_redirected_to matter_type_url(@matter_type)
  end

  test "should destroy matter_type" do
    assert_difference("MatterType.count", -1) do
      delete matter_type_url(@matter_type)
    end

    assert_redirected_to matter_types_url
  end
end
