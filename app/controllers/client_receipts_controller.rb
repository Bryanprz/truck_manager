class ClientReceiptsController < ApplicationController
  before_action :set_client_receipt, only: [:show, :edit, :update, :destroy]
  before_action :set_client
  before_action :set_order
  before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]

  # GET /client_receipts
  # GET /client_receipts.json
  def index
    @client_receipts = ClientReceipt.all
  end

  # GET /client_receipts/1
  # GET /client_receipts/1.json
  def show
  end

  # GET /client_receipts/new
  def new
    @client_receipt = ClientReceipt.new
  end

  # GET /client_receipts/1/edit
  def edit
  end

  # POST /client_receipts
  # POST /client_receipts.json
  def create
    @client_receipt = ClientReceipt.new(client_receipt_params)
    @order.client_receipt = @client_receipt
    respond_to do |format|
      if @client_receipt.save
        format.html { redirect_to client_order_path(@client, @order), notice: 'Client receipt was successfully created.' }
        format.json { render :show, status: :created, location: @client_receipt }
      else
        format.html { render :new }
        format.json { render json: @client_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_receipts/1
  # PATCH/PUT /client_receipts/1.json
  def update
    respond_to do |format|
      if @client_receipt.update(client_receipt_params)
        format.html { redirect_to client_order_path(@client, @order), notice: 'Client receipt was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_receipt }
      else
        format.html { render :edit }
        format.json { render json: @client_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_receipts/1
  # DELETE /client_receipts/1.json
  def destroy
    @client_receipt.destroy
    respond_to do |format|
      format.html { redirect_to client_order_path(@client, @order), notice: 'Recibo ha sido borrado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_receipt
      @client_receipt = ClientReceipt.find(params[:id])
    end

    def set_client
      @client = Client.find(params[:client_id])
    end

    def set_order
      @order = Order.find(params[:order_id])
    end

    def set_s3_direct_post
      @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_receipt_params
      params.require(:client_receipt).permit(:number, :cubic_meters, :value_per_cubic_meter, :date_worked, :order_id, :copy_url, :dump_site, :dump_site_value)
    end
end
