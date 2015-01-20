class Schedules < ActiveRecord::Migration
 def up
   create_table :schedules do |t|
     t.time  :start_time_1
     t.time  :stop_time_1
     t.time  :start_time_2
     t.time  :stop_time_2
     t.integer  :weekday
     t.integer    :user_id    
     t.timestamps
    end
  end
  def down
drop_table :schedules    
  end    
end
