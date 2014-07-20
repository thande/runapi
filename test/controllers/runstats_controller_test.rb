require 'test_helper'

class RunstatsControllerTest < ActionController::TestCase
  setup do
    @runstat = runstats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:runstats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create runstat" do
    assert_difference('Runstat.count') do
      post :create, runstat: { location: @runstat.location, time: @runstat.time, user: @runstat.user }
    end

    assert_redirected_to runstat_path(assigns(:runstat))
  end

  test "should show runstat" do
    get :show, id: @runstat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @runstat
    assert_response :success
  end

  test "should update runstat" do
    patch :update, id: @runstat, runstat: { location: @runstat.location, time: @runstat.time, user: @runstat.user }
    assert_redirected_to runstat_path(assigns(:runstat))
  end

  test "should destroy runstat" do
    assert_difference('Runstat.count', -1) do
      delete :destroy, id: @runstat
    end

    assert_redirected_to runstats_path
  end
end
