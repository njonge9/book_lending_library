class DueBookReminderJob < ApplicationJob
  queue_as :default

  def perform(*args)
    borrowings = Borrowing.where(returned: false).where("due_date <= ?", Date.today + 2.days)
    borrowings.each do |borrowing|
      BorrowingMailer.due_soon(borrowing).deliver_later
    end
  end
end
