class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :accept, :deliver, :update, :destroy]

  # GET /requests
  def index
    puts current_user
    # if current_user is a runner then
    #   return all undelivered requests
    # else
    #   return requests where request.customer_id === current_user.id
    # endif
    if current_user.user_type == "Runner"
      @requests = Request.all
    else
      @requests = Request.where(customer_id: current_user.id)
    end

    render json: @requests
  end

  # GET /requests/1
  def show
    render json: @request
  end

  # POST /requests
  def create
    @request = Request.new(request_params)
    @request.customer = current_user

    if @request.save
      render json: @request, status: :created, location: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # POST /requests/:id/accept
  def accept
    p current_user
    if current_user.user_type == "Runner"
      @request.runner = current_user
    else
      return render json: { errors: ["Invalid user"] }, status: :unprocessable_entity
    end

    @request.job_accepted = true
    if @request.save
      render json: @request, status: :created, location: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # POST /requests/:id/deliver
  def deliver
    if current_user.user_type == "Runner"
      @request.runner = current_user
    else
      return render json: { errors: ["Invalid user"] }, status: :unprocessable_entity
    end

    @request.delivered = true
    if @request.save
      render json: @request, status: :created, location: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /requests/1
  def update
    if @request.update(request_params)
      render json: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /requests/1
  def destroy
    @request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def request_params
      params.require(:request).permit(:customer_id, :runner_id, :image, :location, :destination, :value,  :item_description, :earliest_pickup, :latest_pickup, :earliest_delivery, :latest_delivery, :location_lat, :location_lng, :destination_lat, :destination_lng, :job_accepted, :delivered)
    end
end
