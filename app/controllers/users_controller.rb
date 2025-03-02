class UsersController < ApplicationController
  skip_before_action :require_authentication, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = "You have signed up successfully."
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def profile
    @borrowed_books = current_user.borrowed_books.where(returned: false).includes(:book)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email_address, :password, :password_confirmation)
  end
end
