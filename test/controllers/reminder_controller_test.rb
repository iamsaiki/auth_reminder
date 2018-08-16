require 'test_helper'

class ReminderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reminder_index_url
    assert_response :success
  end

end
