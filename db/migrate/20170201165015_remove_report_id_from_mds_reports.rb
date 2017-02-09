class RemoveReportIdFromMdsReports < ActiveRecord::Migration
  def change
    remove_column :mds_reports, :report_id
  end
end
