require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "presence of title" do
    p = Post.new
    p.valid?
    assert p.errors.invalid?(:title)

    p.title = "some title"
    p.valid?
    assert !p.errors.invalid?(:title)
  end

  test "presence of content" do
    p = Post.new
    p.valid?
    assert p.errors.invalid?(:content)

    p.content = "some content"
    p.valid?
    assert !p.errors.invalid?(:content)
  end

end
