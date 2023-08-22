require 'rails_helper'

RSpec.describe Customer, type: :model do
  attributes = [
    {code: %i[presence uniqueness]},
    {name: :presence}
  ]
  include_examples("model_shared_spec", :customer, attributes)
end
