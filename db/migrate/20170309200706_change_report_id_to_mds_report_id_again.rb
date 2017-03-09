class ChangeReportIdToMdsReportIdAgain < ActiveRecord::Migration
  def change
    rename_column :tobacco_and_alcohols, :report_id, :mds_report_id
    rename_column :cancer_screenings, :report_id, :mds_report_id
    rename_column :current_jobs, :report_id, :mds_report_id
    rename_column :demographics, :report_id, :mds_report_id
    rename_column :duties, :report_id, :mds_report_id
    rename_column :family_histories, :report_id, :mds_report_id
    rename_column :fitness_tests, :report_id, :mds_report_id
    rename_column :health_conditions, :report_id, :mds_report_id
    rename_column :hearing_tests, :report_id, :mds_report_id
    rename_column :immunizations, :report_id, :mds_report_id
    rename_column :injury_illnesses, :report_id, :mds_report_id
    rename_column :other_employments, :report_id, :mds_report_id
    rename_column :physical_activities, :report_id, :mds_report_id
    rename_column :surgeries, :report_id, :mds_report_id
  end
end
