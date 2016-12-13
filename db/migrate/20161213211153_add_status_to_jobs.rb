class AddStatusToJobs < ActiveRecord::Migration[5.0]
  def change
    remove_column :requests, :status_accepted, :string
    add_column :requests, :job_accepted, :string
    add_column :requests, :delivered, :string
  end
end
