class ChangeFitnessBpResponseToFloat < ActiveRecord::Migration
  def change
        remove_column :fitness_test_tests, :fitness_bp_response
    add_column :fitness_test_tests, :fitness_bp_response, :float
  end
end
