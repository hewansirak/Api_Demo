require 'rails_helper'


RSpec.describe "/invoices", type: :request do
  include_examples("request_shared_spec", "invoices", 6, [:index])
  let(:valid_attributes) {
    {
      invoice_number: Faker::Alphanumeric.alpha(number: 8),
      generated_on: Date.current,
      status: Invoice::DRAFT,
      customer_id: create(:customer).id
    }
  }

  let(:invalid_attributes) {
    {
      invoice_number: nil,
      generated_on: Date.current.advance(days: -1),
      status: Invoice::DRAFT,
      customer_id: create(:customer).id
    }
  }

  let(:new_attributes) {
    {
      generated_on: Date.current
    }
  }

  describe "GET /index" do
    it "returns success response" do
      customer1 = create(:customer)
      customer2 = create(:customer)

      create_list(:invoice, 3, customer: customer1)
      create_list(:invoice, 2, customer: customer2)
      get invoices_customer_url(customer1), as: :json
      expect(response).to be_successful
      result = JSON(response.body)

      expect(result["success"]).to be_truthy
      expect(result["data"].count).to eq 3
    end
  end
end
