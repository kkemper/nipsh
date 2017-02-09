class RemoveBsdiReportIdColumn < ActiveRecord::Migration
  def change
    remove_column :bsdi_reports, :bsdi_report_id
  end
end
