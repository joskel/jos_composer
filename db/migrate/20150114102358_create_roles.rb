class CreateRoles < ActiveRecord::Migration
  def up
    create_table :roles do |t|
      t.string "role_name", :limit => 50
      t.timestamps
    end
  end
  def down
    drop_table :roles
  end 
  
  
end
