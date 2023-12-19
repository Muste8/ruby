# frozen_string_literal: true

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should belong to article" do
    article = Article.create(title: "Sample Article", body: "Lorem ipsum lorem ipsum")
    comment = Comment.new(commenter: 'random', body: "This is a comment", article: article)
    assert comment.save
  end
end
