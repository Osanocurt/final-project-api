class RequestSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :runner_id, :status_accepted, :location_lng, :location_lat, :destination_lat, :destination_lng, :value, :image, :item_description, :earliest_pickup, :latest_pickup, :earliest_delivery, :latest_delivery
end
