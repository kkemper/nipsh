class ChangeDatetimeToTimestamp < ActiveRecord::Migration
 def up
  	change_table :cancer_screenings do |t|
  		t.change :created_at, :timestamp
  		t.change :updated_at, :timestamp
  	end
  end

  def down
  	change_table :products do |t|
  		t.change :created_at, :datetime
  		t.change :updated_at, :datetime
  	end
  end
end
