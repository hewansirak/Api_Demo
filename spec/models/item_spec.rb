require "rails_helper"

RSpec.describe Item, type: :model do
  attributes = [
    {code: %i[presence uniqueness]},
    {name: :presence}
  ]
  include_examples("model_shared_spec", :item, attributes)
end
