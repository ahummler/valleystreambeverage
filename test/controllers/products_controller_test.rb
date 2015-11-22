require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get import" do
    get :import
    assert_response :success
  end

  test "should get order" do
    get :order
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

end
