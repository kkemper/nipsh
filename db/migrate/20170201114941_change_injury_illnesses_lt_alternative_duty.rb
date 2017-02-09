class ChangeInjuryIllnessesLtAlternativeDuty < ActiveRecord::Migration
  def change
    remove_column :injury_illnesses, :lt_alternative_duty
    add_column :injury_illnesses, :lt_alternative_duty, :integer
  end
end
