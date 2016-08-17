class ChangeMdsReportIdToReportId < ActiveRecord::Migration
  def up
  	rename_column :demographics, :mds_report_id, :report_id
  end

  def down
  	rename_column :demographics, :report_id, :mds_report_id
  end

end
