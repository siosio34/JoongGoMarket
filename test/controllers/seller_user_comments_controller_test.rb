require 'test_helper'

class SellerUserCommentsControllerTest < ActionController::TestCase
  setup do
    @seller_user_comment = seller_user_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seller_user_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seller_user_comment" do
    assert_difference('SellerUserComment.count') do
      post :create, seller_user_comment: {  }
    end

    assert_redirected_to seller_user_comment_path(assigns(:seller_user_comment))
  end

  test "should show seller_user_comment" do
    get :show, id: @seller_user_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seller_user_comment
    assert_response :success
  end

  test "should update seller_user_comment" do
    patch :update, id: @seller_user_comment, seller_user_comment: {  }
    assert_redirected_to seller_user_comment_path(assigns(:seller_user_comment))
  end

  test "should destroy seller_user_comment" do
    assert_difference('SellerUserComment.count', -1) do
      delete :destroy, id: @seller_user_comment
    end

    assert_redirected_to seller_user_comments_path
  end
end
