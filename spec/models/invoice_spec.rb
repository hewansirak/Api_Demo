require 'rails_helper'

RSpec.describe Invoice, type: :model do
  attributes = [
    {invoice_number: %i[presence uniqueness]},
    {generated_on: :presence},
    {status: [:presence, {inclusion: [[:in_array, Invoice::STATUSES]]}]},
    {customer: :belong_to}
  ]
  include_examples("model_shared_spec", :invoice, attributes)
end
