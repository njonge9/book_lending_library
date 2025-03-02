class UsersController < ApplicationController
  skip_before_action :require_authentication, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
    else
      render :new, status: :unprocessable_entity
    end
  end

  def profile
    @borrowed_books = current_user.borrowed_books.where(returned: false).includes(:book)
  end
end
