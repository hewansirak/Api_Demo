class CustomersController < ApplicationController
  before_action :set_customer, only: %i[show update destroy]

  # GET /customers
  def index
    @customers = Customer.all
    render json: {success: true, data: serialize(@customers)}
  end

  # GET /customers/1
  def show
    render json: {success: true, data: serialize(@customer)}
  end

  # POST /customers
  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render json: {success: true, data: serialize(@customer)}, status: :created
    else
      render json: {success: false, error: @customer.errors}, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /customers/1
  def update
    if @customer.update(customer_params)
      render json: {success: true, data: serialize(@customer)}
    else
      render json: {success: false, error: @customer.errors}, status: :unprocessable_entity
    end
  end

  # DELETE /customers/1
  def destroy
    @customer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.require(:payload).permit(:code, :name)
    end
end
