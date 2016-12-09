class CleanUpRequests < ActiveRecord::Migration[5.0]
  def change
    remove_column :requests, :status_active, :string
    remove_column :requests, :status_delivered, :string
    rename_column :requests, :location, :location_lat
    rename_column :requests, :destination, :destination_lat
    add_column :requests, :location_lng, :string
    add_column :requests, :destination_lng, :string
  end
end
