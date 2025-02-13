class Borrowing < ActiveRecord::Base
    belongs_to :book
  
    validates :borrower_name, presence: true
    validates :book_id, presence: true
    validate :book_availability, on: :create
  
    def return_book
      update(returned_at: Time.current)
    end
  
    private
  
    def book_availability
      if book && !book.available?
        errors.add(:book, "is already borrowed")
      end
    end
  end
  