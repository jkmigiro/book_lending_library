class BorrowersController < ApplicationController
    def show
      @borrower_name = params[:id]
      @borrowings = Borrowing.where(borrower_name: @borrower_name).order(borrowed_at: :desc)
    end
    def index
      @borrowings = Borrowing.includes(:book).all
    end
  end
  