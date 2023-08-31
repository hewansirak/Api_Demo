class InvoiceItemsController < ApplicationController
  include Common

  def index
    super do
      InvoiceItem.includes(:invoice, :item).where(invoice_id: params[:id])
    end
  end

  private

  def model_params
    params.require(:payload).permit(:item_id, :invoice_id, :quantity, :price)
  end
end
