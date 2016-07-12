class CreateMdsReports < ActiveRecord::Migration
  def change
    create_table :mds_reports do |t|
      t.string :report_id
      t.string :demographic_id
      t.date :report_date
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
