require 'test_helper'

class RestaurateursControllerTest < ActionController::TestCase
  setup do
    @restaurateur = restaurateurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurateurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurateur" do
    assert_difference('Restaurateur.count') do
      post :create, restaurateur: { active: @restaurateur.active, user_id: @restaurateur.user_id }
    end

    assert_redirected_to restaurateur_path(assigns(:restaurateur))
  end

  test "should show restaurateur" do
    get :show, id: @restaurateur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurateur
    assert_response :success
  end

  test "should update restaurateur" do
    patch :update, id: @restaurateur, restaurateur: { active: @restaurateur.active, user_id: @restaurateur.user_id }
    assert_redirected_to restaurateur_path(assigns(:restaurateur))
  end

  test "should destroy restaurateur" do
    assert_difference('Restaurateur.count', -1) do
      delete :destroy, id: @restaurateur
    end

    assert_redirected_to restaurateurs_path
  end
end
