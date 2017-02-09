class RemoveBsdiIdFromBsdiPatients < ActiveRecord::Migration
  def change
    remove_column :bsdi_patients, :bsdi_id
  end
end
