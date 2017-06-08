class RemoveCurrentDutiesFromCurrentJobs < ActiveRecord::Migration
  def change
    remove_column :current_jobs, :current_duties
  end
end
