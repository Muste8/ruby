require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "name should be present" do
    category = Category.new(name: "")
    assert_not category.valid?
  end

  # this test kills two birds with one stone
  test "total_articles should return the correct count and if category can have multiple articles" do
    category = Category.new(name: "test") 
    article1 = Article.create(title: "Article 1", category: category)
    article2 = Article.create(title: "Article 2", category: category)

    category.articles << article1
    category.articles << article2

    assert_equal 2, category.total_articles
  end

  test "total_articles should be 0 for a new category" do
    category = Category.new(name: 'General')
    assert_equal 0, category.total_articles
  end
end
