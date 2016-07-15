class CreateCurrentJobs < ActiveRecord::Migration
  def change
    create_table :current_jobs do |t|
      t.string :report_id
      t.boolean :currently_emp
      t.date :date_of_hire
      t.date :date_of_exit
      t.integer :current_duties
      t.boolean :volunteer
      t.integer :volunteer_hours
      t.boolean :other_employment
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
