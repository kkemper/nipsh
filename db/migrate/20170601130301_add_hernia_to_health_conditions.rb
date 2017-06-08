class AddHerniaToHealthConditions < ActiveRecord::Migration
  def change
    add_column :health_conditions, :cancer_type, :string
    add_column :health_conditions, :hernia, :boolean
    add_column :health_conditions, :hernia_ty, :boolean
    add_column :health_conditions, :hernia_current, :boolean
    add_column :health_conditions, :hernia_medication, :boolean
  end
end
