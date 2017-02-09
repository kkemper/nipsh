class ChangeDateOfHireToInteger < ActiveRecord::Migration
  def change
    remove_column :current_jobs, :date_of_hire
    add_column :current_jobs, :date_of_hire, :integer
  end
end
