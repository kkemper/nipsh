class ChangeHealthConditionsOtherTy < ActiveRecord::Migration
  def change
    remove_column :health_conditions, :other_ty
    add_column :health_conditions, :other_ty, :string
  end
end
