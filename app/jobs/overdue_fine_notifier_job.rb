class OverdueFineNotifierJob < ApplicationJob
  queue_as :default

  def perform(*args)
    borrowings = Borrowing.where(returned: false).where("due_date < ?", Date.today)
    borrowings.each do |borrowing|
      borrowing.calculate_fine
      borrowing.save
      BorrowingMailer.overdue_notice(borrowing).deliver_later
    end
  end
end
