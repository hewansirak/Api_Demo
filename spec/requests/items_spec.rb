require 'rails_helper'

RSpec.describe "/items", type: :request do
  include_examples("request_shared_spec", "items", 3)

  let(:valid_attributes) {
    {
      code: Faker::Alphanumeric.alpha(number: 6),
      name: Faker::Name.name
    }
  }

  let(:invalid_attributes) {
    {
      code: Faker::Alphanumeric.alpha(number: 6),
      name: nil
    }
  }

  let(:new_attributes) {
    {
      name: Faker::Name.name
    }
  }
end
