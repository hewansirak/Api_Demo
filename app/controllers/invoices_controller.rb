class InvoicesController < ApplicationController
  include Common

  private

  def model_params
    params.require(:payload).permit(:invoice_number, :generated_on, :status, :customer_id, :total_price)
  end
end
