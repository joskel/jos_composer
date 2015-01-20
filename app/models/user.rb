class User < ActiveRecord::Base
  has_secure_password
  belongs_to :role
  has_many :appointments 
  has_many  :schedules
  
  validates_presence_of :first_name, :email, :last_name
  # validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i  
end
