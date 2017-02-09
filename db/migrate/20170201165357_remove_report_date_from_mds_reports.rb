class RemoveReportDateFromMdsReports < ActiveRecord::Migration
  def change
    remove_column :mds_reports, :report_date
  end
end
