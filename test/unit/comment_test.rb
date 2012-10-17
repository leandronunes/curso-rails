require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  test "presence of body" do
    c = Comment.new
    c.valid?
    assert c.errors.invalid?(:body)

    c.body = "some body"
    c.valid?
    assert !c.errors.invalid?(:body)
  end

end
