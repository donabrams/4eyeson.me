require 'test_helper'

class CellsControllerTest < ActionController::TestCase
  setup do
    @cell = cells(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cells)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cell" do
    assert_difference('Cell.count') do
      post :create, cell: @cell.attributes
    end

    assert_redirected_to cell_path(assigns(:cell))
  end

  test "should show cell" do
    get :show, id: @cell.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cell.to_param
    assert_response :success
  end

  test "should update cell" do
    put :update, id: @cell.to_param, cell: @cell.attributes
    assert_redirected_to cell_path(assigns(:cell))
  end

  test "should destroy cell" do
    assert_difference('Cell.count', -1) do
      delete :destroy, id: @cell.to_param
    end

    assert_redirected_to cells_path
  end
end
