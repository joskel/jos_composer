class Appointment < ActiveRecord::Base
  belongs_to :schedule
  belongs_to :user  
  validates_presence_of :date, :start_time, :stop_time
  
 
  
    def in_schedule?
      if schedule.weekday == date.cwday 
      if ((start_time > schedule.start_time_1) && (stop_time < schedule.stop_time_1)) || ((start_time > schedule.start_time_2) && (stop_time < schedule.stop_time_2))
        
        return true
      end 
      end
      false 
    end  
  
end
