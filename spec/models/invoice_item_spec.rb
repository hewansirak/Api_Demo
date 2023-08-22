require 'rails_helper'

RSpec.describe InvoiceItem, type: :model do
  attributes = [
    {item: :belong_to},
    {invoice: :belong_to},
    {quantity: [:presence, {numericality: [[:is_greater_than, 0]]}]},
    {price: [:presence, {numericality: [[:is_greater_than, 0]]}]}
  ]
  include_examples("model_shared_spec", :invoice_item, attributes)
end
