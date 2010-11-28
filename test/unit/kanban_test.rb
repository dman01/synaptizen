require 'test_helper'

class KanbanTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  test "kanban attributes must not be empty, we have presence rules." do
    kanban=Kanban.new
    assert kanban.invalid?
    assert kanban.errors[:title].any?
    assert kanban.errors[:description].any?
  end
  
  test "The name of a kanban board must be unique" do
    kanban=Kanban.new
    kanban.title=kanbans(:customer_kanban).title
    assert !kanban.save,"#{kanban.title} is already taken as a title for a kanban board"
    assert_equal "kalle", "kalle"
  end
end
