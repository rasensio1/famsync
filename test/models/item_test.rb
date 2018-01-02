require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  def valid_item
    Item.new({text: "Clean house",
              done: false,
              category_id: "1"})

  end
  test "is valid" do
    assert valid_item.valid?
  end

  test "invalid without text" do
    inval = valid_item
    inval.text = ''
    assert inval.invalid?
  end

  test "invalid without category" do
    inval = valid_item
    inval.category_id = nil
    assert inval.invalid?
  end
end
