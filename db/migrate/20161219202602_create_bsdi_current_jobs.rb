class CreateBsdiCurrentJobs < ActiveRecord::Migration
  def change
    create_table :bsdi_current_jobs do |t|
      t.string :bsdi_report_id
      t.string :bsdi_organization
      t.string :bsdi_department
      t.integer :bsdi_service
      t.string :bsdi_job_title

      t.timestamps null: false
    end
  end
end
