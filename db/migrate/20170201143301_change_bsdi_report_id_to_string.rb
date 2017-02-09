class ChangeBsdiReportIdToString < ActiveRecord::Migration
  def change
    add_column :bsdi_reports, :bsdi_report_id, :string
  end
end
