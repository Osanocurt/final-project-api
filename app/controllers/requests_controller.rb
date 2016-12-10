class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :accept, :decline, :update, :destroy]

  # GET /requests
  def index
    @requests = Request.all

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

    if @request.save
      render json: @request, status: :created, location: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  #POST /requests/:id/decline
  def decline
    p current_user
    if current_user.user_type == "Runner"
      @request.runner = current_user
    else
      return render json: { errors: ["Invalid user"] }, status: :unprocessable_entity
    end

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
      params.require(:request).permit(:customer_id, :runner_id, :image, :status_accepted, :status_active, :status_delivered, :location, :destination, :value,  :item_description, :earliest_pickup, :latest_pickup, :earliest_delivery, :latest_delivery)
    end
end
