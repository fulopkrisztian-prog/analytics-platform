require "test_helper"

class FinancialRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @financial_record = financial_records(:one)
  end

  test "should get index" do
    get financial_records_url
    assert_response :success
  end

  test "should get new" do
    get new_financial_record_url
    assert_response :success
  end

  test "should create financial_record" do
    assert_difference("FinancialRecord.count") do
      post financial_records_url, params: { financial_record: { amount: @financial_record.amount, category: @financial_record.category, description: @financial_record.description, project_id: @financial_record.project_id } }
    end

    assert_redirected_to financial_record_url(FinancialRecord.last)
  end

  test "should show financial_record" do
    get financial_record_url(@financial_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_financial_record_url(@financial_record)
    assert_response :success
  end

  test "should update financial_record" do
    patch financial_record_url(@financial_record), params: { financial_record: { amount: @financial_record.amount, category: @financial_record.category, description: @financial_record.description, project_id: @financial_record.project_id } }
    assert_redirected_to financial_record_url(@financial_record)
  end

  test "should destroy financial_record" do
    assert_difference("FinancialRecord.count", -1) do
      delete financial_record_url(@financial_record)
    end

    assert_redirected_to financial_records_url
  end
end
