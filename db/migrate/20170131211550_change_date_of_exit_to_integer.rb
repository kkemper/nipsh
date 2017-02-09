class ChangeDateOfExitToInteger < ActiveRecord::Migration
  def change
        remove_column :current_jobs, :date_of_exit
    add_column :current_jobs, :date_of_exit, :integer
  end
end
