FactoryBot.define do
  factory :invoice_item do
    item
    invoice
    quantity { 20 }
    price { 100 }
  end
end
