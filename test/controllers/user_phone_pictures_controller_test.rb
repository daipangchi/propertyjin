require 'test_helper'

class UserPhonePicturesControllerTest < ActionController::TestCase
  setup do
    @user_phone_picture = user_phone_pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_phone_pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_phone_picture" do
    assert_difference('UserPhonePicture.count') do
      post :create, user_phone_picture: { user_phone_id: @user_phone_picture.user_phone_id }
    end

    assert_redirected_to user_phone_picture_path(assigns(:user_phone_picture))
  end

  test "should show user_phone_picture" do
    get :show, id: @user_phone_picture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_phone_picture
    assert_response :success
  end

  test "should update user_phone_picture" do
    patch :update, id: @user_phone_picture, user_phone_picture: { user_phone_id: @user_phone_picture.user_phone_id }
    assert_redirected_to user_phone_picture_path(assigns(:user_phone_picture))
  end

  test "should destroy user_phone_picture" do
    assert_difference('UserPhonePicture.count', -1) do
      delete :destroy, id: @user_phone_picture
    end

    assert_redirected_to user_phone_pictures_path
  end
end
