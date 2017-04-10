class ChangeFitnessRestBpToFloat2 < ActiveRecord::Migration
  def change
        remove_column :fitness_test_tests, :fitness_rest_bp
    add_column :fitness_test_tests, :fitness_rest_bp, :float
  end
end
