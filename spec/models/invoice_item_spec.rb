require "rails_helper"

RSpec.describe InvoiceItem, type: :model do
  attributes = [
    {item: :belong_to},
    {invoice: :belong_to},
    {quantity: [:presence, {numericality: [[:is_greater_than, 0]]}]},
    {price: [:presence, {numericality: [[:is_greater_than, 0]]}]}
  ]
  include_examples("model_shared_spec", :invoice_item, attributes)

  it "Updates total price when an invoice item is saved" do
    invoice = create(:invoice)
    expect(invoice.total_price).to be_nil
    item = create(:invoice_item, invoice: invoice)
    total_price = item.price * item.quantity
    expect(invoice.total_price).to eq total_price
    create(:invoice_item, invoice: invoice, quantity: 20, price: 5)
    expect(invoice.total_price).to eq(total_price + 100)
  end
end
