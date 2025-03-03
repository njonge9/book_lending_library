class User < ApplicationRecord
  rolify
  resourcify
  after_create :assign_default_role

  validates :name, presence: true, length: { maximum: 50 }
  validates :email_address, presence: true, uniqueness: true

  has_secure_password

  has_many :sessions, dependent: :destroy
  has_many :borrowings, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end

  def admin?
    has_role?(:admin)
  end
end
