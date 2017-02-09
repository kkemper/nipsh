class AddColumnsToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :employee_id, :string
    add_column :patients, :psmsid, :string
  end
end
