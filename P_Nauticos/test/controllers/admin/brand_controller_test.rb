require 'test_helper'

class Admin::BrandControllerTest < ActionController::TestCase
  test "should create new brand" do
    get :new
    assert_response :success    
  end

  test "should create brand" do
    get :new
      assert_difference(Brand, :count) do
      post :create, :brand => {:name => 'Nauticos', :cif => '10212', logo_url: 'holis'}
      assert_response :redirect
      assert_redirected_to :action => 'index'      
    end
        assert_equal 'La marca Nauticos fue añadida.', flash[:notice]
  end

  # test "should get update" do
  #   post :update, :id => 1, :brand => {:name => 'Nauticos', :cif => '10212', logo_url: 'holis'}
  #   assert_response :redirect
  #   #assert_redirected_to :action => 'show', :id => 1
  #   #assert_equal 'Joseph', Author.find(1).first_name
  # end
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
