require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get requests_url, as: :json
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post requests_url, params: { request: { customer_id: @request.customer_id, destination: @request.destination, earliest_delivery: @request.earliest_delivery, earliest_pickup: @request.earliest_pickup, image: @request.image, item_description: @request.item_description, latest_delivery: @request.latest_delivery, latest_pickup: @request.latest_pickup, location: @request.location, runner_id: @request.runner_id, status_accepted: @request.status_accepted, status_active: @request.status_active, status_delivered: @request.status_delivered, value: @request.value } }, as: :json
    end

    assert_response 201
  end

  test "should show request" do
    get request_url(@request), as: :json
    assert_response :success
  end

  test "should update request" do
    patch request_url(@request), params: { request: { customer_id: @request.customer_id, destination: @request.destination, earliest_delivery: @request.earliest_delivery, earliest_pickup: @request.earliest_pickup, image: @request.image, item_description: @request.item_description, latest_delivery: @request.latest_delivery, latest_pickup: @request.latest_pickup, location: @request.location, runner_id: @request.runner_id, status_accepted: @request.status_accepted, status_active: @request.status_active, status_delivered: @request.status_delivered, value: @request.value } }, as: :json
    assert_response 200
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete request_url(@request), as: :json
    end

    assert_response 204
  end
end
