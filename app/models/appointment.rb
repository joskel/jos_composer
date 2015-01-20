class Appointment < ActiveRecord::Base
  belongs_to :schedule
  belongs_to :user  
  validates_presence_of :date, :start_time, :stop_time
end
