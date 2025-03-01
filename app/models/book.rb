class Book < ApplicationRecord
    has_many :borrowings
    has_many :users, through: :borrowings
    validates :title, :author, :isbn, presence: true
    validates :isbn, uniqueness: true
    # validates :author, presence: true
    # validates :isb, presence: true

    def available?
        borrowings.where(returned_at: false).empty?
    end
end
