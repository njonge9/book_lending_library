class BorrowingMailer < ApplicationMailer
    default from: 'frednjonge9@gmail.com'

    def due_soon(borrowing)
        @borrowing = borrowing
        @user = borrowing.user
        mail(to: @user.email, subject: "Overdue Book Notice - Fine Applied")
    end
end
