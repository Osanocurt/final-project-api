class RequestSerializer < ActiveModel::Serializer
  belongs_to :customer
  belongs_to :runner
  attributes :id, :location_lng, :location_lat, :destination_lat, :destination_lng, :value, :image, :item_description, :earliest_pickup, :latest_pickup, :earliest_delivery, :latest_delivery, :job_accepted, :delivered
end
