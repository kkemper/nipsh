class RemoveColumnsFromMdsPatients < ActiveRecord::Migration
  def change
    remove_column :mds_patients, :gender
    remove_column :mds_patients, :employeeid
  end
end
