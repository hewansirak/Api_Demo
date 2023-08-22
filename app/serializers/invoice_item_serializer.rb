class InvoiceItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :price
  has_one :item
  has_one :invoice
end
