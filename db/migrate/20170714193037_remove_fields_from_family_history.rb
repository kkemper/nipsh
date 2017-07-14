class RemoveFieldsFromFamilyHistory < ActiveRecord::Migration
  def change
    remove_column :family_histories, :male_alcohol
    remove_column :family_histories, :female_alcohol
    remove_column :family_histories, :male_hypertension
    remove_column :family_histories, :female_hypertension
  end
end
