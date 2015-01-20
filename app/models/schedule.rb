class Schedule < ActiveRecord::Base
  belongs_to :user
  has_many :appointments     
  validates_presence_of :start_time_1, :stop_time_1, :weekday, :user_id
  validates_inclusion_of :weekday , in: 1..5  
end
