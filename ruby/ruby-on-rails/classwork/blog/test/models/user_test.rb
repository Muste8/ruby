require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "All the users comments" do
    user = User.create(
      first_name: "fake",
      last_name: "test",
      username: "testuser",
      email: "fake.test@fake.email"
    )
  
    comments = [
      Comment.new(body: "Comment body 1"),
      Comment.new(body: "Comment body 2")
    ]
  
    user.comments << comments
  
    assert_equal 2, user.comments.length, "User should have two comments"
    assert user.save, "Could not save user with comments"
  end
end
