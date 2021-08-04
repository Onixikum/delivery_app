class Package < ApplicationRecord
  belongs_to :courier

  validates :tracking_number, presence: true

  scope :done, -> { where(delivery_status: true) }
  scope :in_work, -> { where(delivery_status: false) }
end
