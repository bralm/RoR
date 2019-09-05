require 'test_helper'

class RoRListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ro_r_list = ro_r_lists(:one)
  end

  test "should get index" do
    get ro_r_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_ro_r_list_url
    assert_response :success
  end

  test "should create ro_r_list" do
    assert_difference('RoRList.count') do
      post ro_r_lists_url, params: { ro_r_list: { description: @ro_r_list.description, title: @ro_r_list.title } }
    end

    assert_redirected_to ro_r_list_url(RoRList.last)
  end

  test "should show ro_r_list" do
    get ro_r_list_url(@ro_r_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_ro_r_list_url(@ro_r_list)
    assert_response :success
  end

  test "should update ro_r_list" do
    patch ro_r_list_url(@ro_r_list), params: { ro_r_list: { description: @ro_r_list.description, title: @ro_r_list.title } }
    assert_redirected_to ro_r_list_url(@ro_r_list)
  end

  test "should destroy ro_r_list" do
    assert_difference('RoRList.count', -1) do
      delete ro_r_list_url(@ro_r_list)
    end

    assert_redirected_to ro_r_lists_url
  end
end
