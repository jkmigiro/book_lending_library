class BorrowingsController < ApplicationController
  before_action :set_borrowing, only: %i[show edit update destroy return_book]
  
  def index
    @borrowings = Borrowing.all
  end

  def show
    @borrowing = Borrowing.find(params[:id])
  end

  def new
    @borrowing = Borrowing.new
  end

  def return_book
    @borrowing.update(returned_at: Time.current)
    redirect_to @borrowing.book, notice: "Book returned successfully."
  end

  def create
    @borrowing = Borrowing.new(borrowing_params)
    if @borrowing.save
      redirect_to @borrowing
    else
      render :new
    end
  end

  def edit
    @borrowing = Borrowing.find(params[:id])
  end

  def update
    @borrowing = Borrowing.find(params[:id])
    if @borrowing.update(borrowing_params)
      redirect_to @borrowing
    else
      render :edit
    end
  end

  def destroy
    @borrowing = Borrowing.find(params[:id])
    @borrowing.destroy
    redirect_to borrowings_path
  end


  def set_borrowing
      @borrowing = Borrowing.find(params[:id])
  end
  
  private
  def borrowing_params
    params.require(:borrowing).permit(:borrower_name, :book_id)
  end
end