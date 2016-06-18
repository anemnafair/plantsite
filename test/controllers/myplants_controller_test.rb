require 'test_helper'

class MyplantsControllerTest < ActionController::TestCase
  setup do
    @myplant = myplants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myplants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myplant" do
    assert_difference('Myplant.count') do
      post :create, myplant: { description: @myplant.description }
    end

    assert_redirected_to myplant_path(assigns(:myplant))
  end

  test "should show myplant" do
    get :show, id: @myplant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myplant
    assert_response :success
  end

  test "should update myplant" do
    patch :update, id: @myplant, myplant: { description: @myplant.description }
    assert_redirected_to myplant_path(assigns(:myplant))
  end

  test "should destroy myplant" do
    assert_difference('Myplant.count', -1) do
      delete :destroy, id: @myplant
    end

    assert_redirected_to myplants_path
  end
end
