class InvoiceItem < ApplicationRecord
  belongs_to :item
  belongs_to :invoice

  validates :quantity, :price, presence: true, numericality: {greater_than: 0}
end
