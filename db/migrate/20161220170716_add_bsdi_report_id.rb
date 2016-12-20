class AddBsdiReportId < ActiveRecord::Migration
  def change
    add_column :bsdi_measurements, :bsdi_report_id, :string 
  end
end
