require 'test_helper'

class Admin::BrandControllerTest < ActionController::TestCase
  test "should create new brand" do
    get :new
    assert_response :success
    #assert Brand.new 
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

  test "show" do
    get :show, :id => 1
    assert_template 'admin/brand/show'
    assert_equal 'Nauticos', assigns(:brand).name
    assert_equal 1012, assigns(:brand).cif
  end

  test "should update brand" do
    post :update, :id => 1, :brand => {:name => 'Adidas', :cif => '10212', logo_url: 'holis'}
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => 1
    assert_equal 'Adidas', Brand.find(1).name
  end

  test "test_destroy" do
    assert_difference(Brand, :count, -1) do
      post :destroy, :id => 1
      assert_equal flash[:notice], 'La marca Nauticos fue eliminada.'
      assert_response :redirect
      assert_redirected_to :action => 'index'
    end
  end


  # test "should get index" do
  #   get :index
  #   assert_response :success
  # end

end
