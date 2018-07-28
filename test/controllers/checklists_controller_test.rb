require 'test_helper'

class ChecklistsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get checklists_create_url
    assert_response :success
  end

end
