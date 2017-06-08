class ChangeInjuryIllnessToBoolean < ActiveRecord::Migration
  def change
    remove_column :injury_illnesses, :alternative_duty
    remove_column :injury_illnesses, :lt_alternative_duty
    add_column :injury_illnesses, :alternative_duty, :boolean
    add_column :injury_illnesses, :lt_alternative_duty, :boolean
  end
end
