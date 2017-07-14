class RemoveFitnessTestsTable < ActiveRecord::Migration
  def change
    drop_table :fitness_tests
  end
end
