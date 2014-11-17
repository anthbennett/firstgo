require 'test_helper'

class IncomeSummariesControllerTest < ActionController::TestCase
  setup do
    @income_summary = income_summaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:income_summaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create income_summary" do
    assert_difference('IncomeSummary.count') do
      post :create, income_summary: { company: @income_summary.company, individual: @income_summary.individual, trust: @income_summary.trust }
    end

    assert_redirected_to income_summary_path(assigns(:income_summary))
  end

  test "should show income_summary" do
    get :show, id: @income_summary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @income_summary
    assert_response :success
  end

  test "should update income_summary" do
    patch :update, id: @income_summary, income_summary: { company: @income_summary.company, individual: @income_summary.individual, trust: @income_summary.trust }
    assert_redirected_to income_summary_path(assigns(:income_summary))
  end

  test "should destroy income_summary" do
    assert_difference('IncomeSummary.count', -1) do
      delete :destroy, id: @income_summary
    end

    assert_redirected_to income_summaries_path
  end
end
