class Invoice < ApplicationRecord
  DRAFT = "Draft".freeze
  APPROVED = "Approved".freeze
  STATUSES = [DRAFT, APPROVED].freeze

  belongs_to :customer

  validates :invoice_number, presence: true, uniqueness: true
  validates :generated_on, presence: true
  validates :status, presence: true, inclusion: {in: STATUSES}
end
