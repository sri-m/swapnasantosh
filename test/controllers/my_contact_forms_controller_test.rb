require 'test_helper'

class MyContactFormsControllerTest < ActionController::TestCase
  setup do
    @my_contact_form = my_contact_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_contact_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_contact_form" do
    assert_difference('MyContactForm.count') do
      post :create, my_contact_form: { address: @my_contact_form.address, name: @my_contact_form.name }
    end

    assert_redirected_to my_contact_form_path(assigns(:my_contact_form))
  end

  test "should show my_contact_form" do
    get :show, id: @my_contact_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_contact_form
    assert_response :success
  end

  test "should update my_contact_form" do
    patch :update, id: @my_contact_form, my_contact_form: { address: @my_contact_form.address, name: @my_contact_form.name }
    assert_redirected_to my_contact_form_path(assigns(:my_contact_form))
  end

  test "should destroy my_contact_form" do
    assert_difference('MyContactForm.count', -1) do
      delete :destroy, id: @my_contact_form
    end

    assert_redirected_to my_contact_forms_path
  end
end
