require 'test_helper'

class UsersPhonesControllerTest < ActionController::TestCase
  setup do
    @users_phone = users_phones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_phones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_phone" do
    assert_difference('UsersPhone.count') do
      post :create, users_phone: { another_staff: @users_phone.another_staff, box: @users_phone.box, box_imei: @users_phone.box_imei, calls_time: @users_phone.calls_time, charger: @users_phone.charger, condition: @users_phone.condition, cradle: @users_phone.cradle, date: @users_phone.date, imei: @users_phone.imei, keyboard_lang: @users_phone.keyboard_lang, made_in: @users_phone.made_in, menu_lang: @users_phone.menu_lang, notes: @users_phone.notes, phone_id: @users_phone.phone_id, selling: @users_phone.selling, sim: @users_phone.sim, sw: @users_phone.sw, type: @users_phone.type, usb: @users_phone.usb, user_id: @users_phone.user_id }
    end

    assert_redirected_to users_phone_path(assigns(:users_phone))
  end

  test "should show users_phone" do
    get :show, id: @users_phone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_phone
    assert_response :success
  end

  test "should update users_phone" do
    patch :update, id: @users_phone, users_phone: { another_staff: @users_phone.another_staff, box: @users_phone.box, box_imei: @users_phone.box_imei, calls_time: @users_phone.calls_time, charger: @users_phone.charger, condition: @users_phone.condition, cradle: @users_phone.cradle, date: @users_phone.date, imei: @users_phone.imei, keyboard_lang: @users_phone.keyboard_lang, made_in: @users_phone.made_in, menu_lang: @users_phone.menu_lang, notes: @users_phone.notes, phone_id: @users_phone.phone_id, selling: @users_phone.selling, sim: @users_phone.sim, sw: @users_phone.sw, type: @users_phone.type, usb: @users_phone.usb, user_id: @users_phone.user_id }
    assert_redirected_to users_phone_path(assigns(:users_phone))
  end

  test "should destroy users_phone" do
    assert_difference('UsersPhone.count', -1) do
      delete :destroy, id: @users_phone
    end

    assert_redirected_to users_phones_path
  end
end
