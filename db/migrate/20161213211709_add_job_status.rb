class AddJobStatus < ActiveRecord::Migration[5.0]
  def change
    remove_column :requests, :job_accepted, :string
    remove_column :requests, :delivered, :string
    add_column :requests, :job_accepted, :boolean
    add_column :requests, :delivered, :boolean
  end
end
