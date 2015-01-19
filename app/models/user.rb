class User < ActiveRecord::Base
  has_secure_password
  belongs_to :role
  
  validates_presence_of :first_name
  validates_presence_of :last_name
validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i  
end
