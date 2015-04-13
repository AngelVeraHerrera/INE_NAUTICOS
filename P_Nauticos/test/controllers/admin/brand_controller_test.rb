require 'test_helper'

class Admin::BrandControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success    
  end

  test "should get create" do
    get :new
      assert_difference(Brand, :count) do
      post :create, :brand => {:name => 'Nauticos', :cif => '10212', logo_url: 'holis'}
      assert_response :redirect
      assert_redirected_to :action => 'index'      
    end
        assert_equal 'La marca Nauticos fue añadida.', flash[:notice]
  end

  # test "should get update" do
  #   get :update
  #   assert_response :success
  # end

  # test "should get destroy" do
  #   get :destroy
  #   assert_response :success
  # end

  # test "should get show" do
  #   get :show
  #   assert_response :success
  # end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  # end

end
