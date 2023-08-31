class InvoiceItem < ApplicationRecord
  after_save :update_total_price

  belongs_to :item
  belongs_to :invoice

  validates :quantity, :price, presence: true, numericality: {greater_than: 0}

  def update_total_price
    invoice.total_price ||= 0
    invoice.total_price += price * quantity
    invoice.save!
  end
end
