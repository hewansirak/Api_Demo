class InvoicesController < ApplicationController
  include Common

  def index
    super do
      Invoice.includes(:customer).where(customer_id: params[:id])
    end
  end

  private

  def model_params
    params.require(:payload).permit(:invoice_number, :generated_on, :status, :customer_id, :total_price)
  end
end
