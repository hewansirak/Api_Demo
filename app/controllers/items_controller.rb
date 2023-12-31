class ItemsController < ApplicationController
  include Common

  private

  def model_params
    params.require(:payload).permit(:code, :name)
  end
end
