class Courier < ApplicationRecord
  before_save { email.downcase! }

  validates :name, presence: true, length: { in: 2..25 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 50 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  default_scope -> { order(updated_at: :desc) }
end
