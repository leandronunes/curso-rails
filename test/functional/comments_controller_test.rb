require File.dirname(__FILE__) + '/../test_helper'

class CommentsControllerTest < ActionController::TestCase

  test "should create comment" do
    p = Post.create!(:title => 'title', :content => 'content')
    assert_difference('Comment.count') do
      post :create, :post_id => p.id, :comment => {:body => 'some body'}
    end

    assert_redirected_to post_url(p)
  end

end
