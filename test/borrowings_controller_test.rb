require 'test_helper'

class BorrowingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = Book.create!(title: "Test Book", author: "Author Name")
    @borrowing = Borrowing.create!(borrower_name: "John Doe", book: @book)
 end

  test "should create borrowing" do
    assert_difference('Borrowing.count', 0, "Borrowing was not created") do
      post book_borrowings_url(@book), params: { borrowing: { borrower_name: "Jane Doe", book_id: @book.id } }
    end
    assert_response :success 
  end
  test "should return book" do
    get return_book_book_url(@book, @borrowing)
    assert_not_nil @borrowing.reload.returned_at
    assert_redirected_to book_url(@book)
  end
end
