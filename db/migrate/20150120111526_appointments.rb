class Appointments < ActiveRecord::Migration
   def up
     create_table :appointments do |t|
     t.time  :start_time
     t.time  :stop_time
     t.date  :date
      t.integer  :schedule_id
     t.integer    :user_id    
     t.timestamps
    end
  end
  def down
drop_table :appointments    
  end    
end
