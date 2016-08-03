class CreateDuties < ActiveRecord::Migration
  def change
    create_table :duties do |t|
      t.string :report_id
      t.integer :fire_suppression_years
      t.integer :ems_years
      t.integer :mgmt_years
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
