require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  test "should get index" do
    Item.create({text: "my test",
              done: false,
              category_id: "1"})

    Item.create({text: "Clean house",
              done: false,
              category_id: "1"})

    get :index
    json_response = JSON.parse(response.body)
    assert_equal "my test", json_response.first["text"]
    assert_equal 2, json_response.count
  end
end
