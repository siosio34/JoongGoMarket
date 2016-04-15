require 'test_helper'

class SellerUsersControllerTest < ActionController::TestCase
  setup do
    @seller_user = seller_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seller_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seller_user" do
    assert_difference('SellerUser.count') do
      post :create, seller_user: {  }
    end

    assert_redirected_to seller_user_path(assigns(:seller_user))
  end

  test "should show seller_user" do
    get :show, id: @seller_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seller_user
    assert_response :success
  end

  test "should update seller_user" do
    patch :update, id: @seller_user, seller_user: {  }
    assert_redirected_to seller_user_path(assigns(:seller_user))
  end

  test "should destroy seller_user" do
    assert_difference('SellerUser.count', -1) do
      delete :destroy, id: @seller_user
    end

    assert_redirected_to seller_users_path
  end
end
