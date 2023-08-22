class InvoiceSerializer < ActiveModel::Serializer
  attributes :id, :invoice_number, :generated_on, :status, :total_price
  has_one :customer
end
