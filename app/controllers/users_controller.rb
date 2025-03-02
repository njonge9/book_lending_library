class UsersController < ApplicationController
  def profile
    @borrowed_books = current_user.borrowed_books.where(returned: false).includes(:book)
  end
end
