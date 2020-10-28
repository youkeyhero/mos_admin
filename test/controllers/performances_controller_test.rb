require 'test_helper'

class PerformancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @performance = performances(:one)
  end

  test "should get index" do
    get performances_url
    assert_response :success
  end

  test "should get new" do
    get new_performance_url
    assert_response :success
  end

  test "should create performance" do
    assert_difference('Performance.count') do
      post performances_url, params: { performance: { business_cd: @performance.business_cd, date: @performance.date, performance: @performance.performance, plan: @performance.plan, user_id: @performance.user_id } }
    end

    assert_redirected_to performance_url(Performance.last)
  end

  test "should show performance" do
    get performance_url(@performance)
    assert_response :success
  end

  test "should get edit" do
    get edit_performance_url(@performance)
    assert_response :success
  end

  test "should update performance" do
    patch performance_url(@performance), params: { performance: { business_cd: @performance.business_cd, date: @performance.date, performance: @performance.performance, plan: @performance.plan, user_id: @performance.user_id } }
    assert_redirected_to performance_url(@performance)
  end

  test "should destroy performance" do
    assert_difference('Performance.count', -1) do
      delete performance_url(@performance)
    end

    assert_redirected_to performances_url
  end
end
