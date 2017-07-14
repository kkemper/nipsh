class RemoveImmunizationsTable < ActiveRecord::Migration
  def change
    drop_table :immunizations
  end
end
