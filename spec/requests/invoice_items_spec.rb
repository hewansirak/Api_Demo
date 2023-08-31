require "rails_helper"

RSpec.describe "/invoice_items", type: :request do
  include_examples("request_shared_spec", "invoice_items", 5, [:index])
  let(:valid_attributes) {
    {
      quantity: 10,
      price: 100,
      item_id: create(:item).id,
      invoice_id: create(:invoice).id
    }
  }

  let(:invalid_attributes) {
    {
      quantity: nil,
      price: 100,
      item_id: create(:item).id,
      invoice_id: create(:invoice).id
    }
  }

  let(:new_attributes) {
    {
      quantity: 15
    }
  }

  describe "GET /invoices/:id/items" do
    it "returns success response" do
      invoice1 = create(:invoice)
      invoice2 = create(:invoice)

      create_list(:invoice_item, 3, invoice: invoice1)
      create_list(:invoice_item, 2, invoice: invoice2)
      get items_invoice_url(invoice1), as: :json
      expect(response).to be_successful
      result = JSON(response.body)

      expect(result["success"]).to be_truthy
      expect(result["data"].count).to eq 3
    end
  end
end
