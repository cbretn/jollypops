require 'test_helper'

class SpaceTagsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get space_tags_index_url
    assert_response :success
  end

  test "should get new" do
    get space_tags_new_url
    assert_response :success
  end

  test "should get create" do
    get space_tags_create_url
    assert_response :success
  end

end
