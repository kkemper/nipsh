class DropLabDataTable < ActiveRecord::Migration
  def change
    drop_table :lab_data
  end
end
