require 'test_helper'

class GlobalAnnoucementsControllerTest < ActionController::TestCase
  setup do
    @global_annoucement = global_annoucements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:global_annoucements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create global_annoucement" do
    assert_difference('GlobalAnnoucement.count') do
      post :create, global_annoucement: { content: @global_annoucement.content }
    end

    assert_redirected_to global_annoucement_path(assigns(:global_annoucement))
  end

  test "should show global_annoucement" do
    get :show, id: @global_annoucement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @global_annoucement
    assert_response :success
  end

  test "should update global_annoucement" do
    patch :update, id: @global_annoucement, global_annoucement: { content: @global_annoucement.content }
    assert_redirected_to global_annoucement_path(assigns(:global_annoucement))
  end

  test "should destroy global_annoucement" do
    assert_difference('GlobalAnnoucement.count', -1) do
      delete :destroy, id: @global_annoucement
    end

    assert_redirected_to global_annoucements_path
  end
end
