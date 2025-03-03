class BorrowingsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    borrowing = Current.session.user.borrowings.build(book: book)
    if borrowing.save
      redirect_to profile_path, notice: "You have borrowed this book."
    else
      redirect_to book, alert: borrowing.errors.full_messages.join(", ")
  end
end

  def destroy
    borrowing = current_user.borrowings.find(params[:id])
    borrowing.update(returned: true)
    redirect_to profile_path, notice: "You have returned the book."
  end
end
