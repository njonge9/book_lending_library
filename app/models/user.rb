class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :email_address, presence: true, uniqueness: true

  has_secure_password

  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
