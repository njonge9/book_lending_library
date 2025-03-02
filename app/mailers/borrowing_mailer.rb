class BorrowingMailer < ApplicationMailer
    default from: 'frednjonge9@gmail.com'

    def due_soon(borrowing)
        @borrowing = borrowing
        @user = borrowing.user
        mail(to: @user.email, subject: "Reminder: Book Due soon")
    end
end
