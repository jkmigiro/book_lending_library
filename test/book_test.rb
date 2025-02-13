require './app/models/book'
require 'test_helper'
class BookTest < ActiveSupport::TestCase
  def test_truth
    Rails.logger.debug "Current Environment: #{Rails.env}"
    assert true
  end
    test "should not save book without title" do
      book = Book.new(author: "Author Name")
      assert_not book.save, "Saved the book without a title"
    end
  end