class Borrowing < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :due_date, presence: true
  validates :book_availability, on: :create

  before_create :set_due_date
  before_save :calculate_fine

  def set_due_date
    self.due_date = Date.today + 14.days
    self.returned = false
  end

  def book_availability
    unless book.available?
      errors.add(:book, "is already borrowed")
    end
  end

  def calculate_fine
    if Date.today > due_date && !returned
      self.fine = (Date.today - due_date).to_i * 2
    else
      self.fine = 0
    end
  end
end
