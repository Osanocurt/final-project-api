class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.integer :customer_id
      t.integer :runner_id
      t.string :status_accepted
      t.string :status_active
      t.string :status_delivered
      t.string :location
      t.string :destination
      t.float :value
      t.string :image
      t.string :item_description
      t.string :earliest_pickup
      t.string :latest_pickup
      t.string :earliest_delivery
      t.string :latest_delivery

      t.timestamps
    end
  end
end
