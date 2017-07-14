class DropPhysicalExamsTable < ActiveRecord::Migration
  def change
    drop_table :physical_exams
  end
end
