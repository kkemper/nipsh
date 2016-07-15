class CreatePhysicalActivities < ActiveRecord::Migration
  def change
    create_table :physical_activities do |t|
      t.string :report_id
      t.integer :thirty_min
      t.integer :cardio
      t.integer :muscle
      t.integer :sweat
      t.integer :everyday
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
